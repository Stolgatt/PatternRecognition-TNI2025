Deb_Y= 150;
Fin_Y=240;
Col= 240;

run("Set Scale...", "distance=87.9583 known=45 unit=mm");
calibration = 45 / 87.9583;

setAutoThreshold("Otsu dark no-reset");
setOption("BlackBackground", true);
run("Convert to Mask");

run("Find Edges");

makeLine(Col, Deb_Y, Col, Fin_Y);
Profile = getProfile();

n = lengthOf(Profile);
center = floor(n / 2);
leftPeak = -1;
rightPeak = -1;

for (i = center; i >= 0; i--) {
    if (Profile[i] > 128) {
        leftPeak = i;
        break;
    }
}

for (i = center; i < n; i++) {
    if (Profile[i] > 128) {
        rightPeak = i;
        break;
    }
}

distance_pixels = abs(rightPeak - leftPeak);

distance_mm = distance_pixels * calibration;

print("Diamètre de la clé : " + distance_mm + " mm");
print("Numéro de la clé : " + round(distance_mm));

numProfiles = 5; 
totalDistance = 0;

for (offset = -2; offset <= 2; offset++) { 
    makeLine(Col + offset, Deb_Y, Col + offset, Fin_Y);
    Profile = getProfile();
    leftPeak = -1;
    rightPeak = -1;
    for (i = center; i >= 0; i--) {
        if (Profile[i] > 128) {
            leftPeak = i;
            break;
        }
    }
    for (i = center; i < n; i++) {
        if (Profile[i] > 128) {
            rightPeak = i;
            break;
        }
    }
    if (leftPeak != -1 && rightPeak != -1) {
        totalDistance += abs(rightPeak - leftPeak) * calibration;
    }
}
averageDistance_mm = totalDistance / numProfiles;

//print("Diamètre moyen : " + round(averageDistance_mm) + " mm");
