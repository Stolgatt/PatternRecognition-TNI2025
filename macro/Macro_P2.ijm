setAutoThreshold("Otsu dark no-reset");
setOption("BlackBackground", true);
run("Convert to Mask");

run("Close-");

roiManager("reset");
run("Clear Results");

run("Set Measurements...", "shape limit add redirect=None decimal=3");

run("Shape Filter", "area=0-Infinity area_convex_hull=0-Infinity perimeter=0-Infinity perimeter_convex_hull=0-Infinity feret_diameter=0-Infinity min._feret_diameter=0-Infinity max._inscr._circle_diameter=0-Infinity area_eq._circle_diameter=0-Infinity long_side_min._bounding_rect.=0-Infinity short_side_min._bounding_rect.=0-Infinity aspect_ratio=1-Infinity area_to_perimeter_ratio=0-Infinity circularity=0-Infinity elongation=0-1 convexity=0-1 solidity=0-1 num._of_holes=0-Infinity thinnes_ratio=0-1 contour_temperatur=0-1 orientation=0-180 fractal_box_dimension=0-2 option->box-sizes=2,3,4,6,8,12,16,32,64 add_to_manager draw_holes black_background fill_results_table exclude_on_edges");

roiManager("UseNames", "true");

nb_Obj = roiManager("count");

for (i = 0; i < nb_Obj; i++){

	roiManager("select", i);

	area = getResult("Area",i);
	circ = getResult("Circ.",i);
	AR = getResult("Aspect Ratio",i);
	holes = getResult("Num. of Holes",i);
	feret = getResult("Min. Feret",i);
	elong = getResult("Elong.",i);
	solid = getResult("Solidity",i);

	if( circ > 65 && AR > 4 && AR < 7.2 && elong > 0.9){
		setResult("Label",i,"Clé");
		roiManager("Rename","Clé");
	} else if(AR < 1.1 && AR > 0.9) {
		if(circ < 13 && circ > 12){
			setResult("Label",i,"Pièce");
			roiManager("Rename","Pièce");
		} else if(circ < 23 && circ > 10 && holes == 1){
			if (feret > 0.15 && feret < 0.25 && solid < 0.95) {
				setResult("Label",i,"Rondelle");
				roiManager("Rename","Rondelle");
			} else if (feret < 0.16 && feret > 0.1 && solid >= 0.95) {
				setResult("Label",i,"Dé_"+holes);
				roiManager("Rename","Dé_"+holes);
			}
		} else if(circ < 23 && circ > 10 && holes > 1 && feret <= 0.16 && feret > 0.1) {
			setResult("Label",i,"Dé_"+holes);
			roiManager("Rename","Dé_"+holes);
		}
	}
	else{
		setResult("Label",i,"u"+i);
		roiManager("Rename","?");
	}
}

roiManager("Show All with labels");
