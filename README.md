# Projet de Traitement Numérique de l'Image sous ImageJ

Ce projet consiste à développer des macros sous **ImageJ** pour le traitement d'images, dans le but de déterminer des caractéristiques spécifiques d'objets présents dans des photographies. Le projet est divisé en deux parties : 

1. Détermination de la largeur de serrage d'une clé plate placée dans une zone fixée sur des photographies.
2. Reconnaissance automatique d'objets dans une image, avec labellisation des objets.

## Objectifs

### Partie 1 : Détermination de la largeur de serrage d'une clé plate

Le but de cette première macro est de déterminer la largeur de serrage d'une clé plate placée dans une zone définie sur une photographie. Les photographies sont prises sur un fond noir, dans des conditions d'éclairage et de contraste variés.

### Partie 2 : Reconnaissance automatique d'objets

Dans la deuxième partie du projet, une macro doit être écrite pour analyser des images contenant divers objets (clé plate, dés avec numéro visible, rondelles, et pièces pleines). L'objectif est de reconnaître ces objets, les étiqueter, et classer tout objet non reconnu comme "inconnu". Les images utilisées dans cette partie peuvent comporter des objets tronqués et distribués sur toute l'image.

## Contenu du projet

- **Dossier `Macro`** : Contient les deux macros développées pour chaque partie du projet.
- **Dossier `Image_Post_Traitement_Partie_2`** : Contient les images après le traitement de la deuxième macro.
- **Dossier `Document`** : Contient le sujet du projet, le compte-rendu détaillé, ainsi que les images utilisées pour la partie théorique.
- **Dossier `Images_tests`** : Contient toutes les images utilisées pour le travail dans les parties 1 et 2 du projet.

## Utilisation des macros sous ImageJ

### Prérequis

1. **Installation d'ImageJ** : Si ce n'est pas déjà fait, vous pouvez télécharger et installer ImageJ depuis le site officiel : [ImageJ Download](https://imagej.nih.gov/ij/download.html).

2. **Charger une image dans ImageJ** : Ouvrez ImageJ, puis chargez une image en allant dans `Fichier` -> `Ouvrir...` et sélectionnez l'image sur laquelle vous souhaitez appliquer les macros ou glissez-déposez l'image directement dans ImageJ depuis un gestionnaire de fichier.

### Exécution de la première macro (Partie 1)

1. Ouvrez **ImageJ**.
2. Allez dans le dossier `Macro` et ouvrez la première macro qui permet de déterminer la largeur de serrage d'une clé ou glisser déposer la macro dans ImageJ.
3. Pour exécuter la macro, allez dans `Plugins` -> `Macros` -> `Run...` et sélectionnez la macro à exécuter.
4. La macro déterminera la largeur de la clé dans la zone définie, selon les critères spécifiés (fond noir, éclairage, contraste).

### Exécution de la deuxième macro (Partie 2)

1. Ouvrez **ImageJ**.
2. Allez dans le dossier `Macro` et ouvrez la deuxième macro pour la reconnaissance des objets (clés, dés, rondelles, pièces) ou glisser déposer la macro dans ImageJ.
3. Allez dans `Plugins` -> `Macros` -> `Run...` et sélectionnez la macro à exécuter.
4. La macro identifiera et étiquettera les objets présents dans l'image selon les critères définis, en classant les objets reconnus et les autres comme "inconnus".

### Images utilisées

- Les images d'exemples et d'entrainement utilisées pour les deux parties du projet se trouvent dans le dossier **`Images_tests`**.
- Les résultats après traitement des images dans la **Partie 2** peuvent être consultés dans le dossier **`Image_Post_Traitement_Partie_2`**.


## Auteurs

- **Alexis CHAVY (alias [Stolgatt](https://github.com/Stolgatt) et Victor Davillé (alias [Enkodo01](https://github.com/Enkodo01))**



