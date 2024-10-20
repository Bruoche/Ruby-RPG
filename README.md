# Ruby Dungeon

  Bienvenue dans Ruby Dungeon, le dungeon-crawler textuel codé en Ruby.

## Installation (Windows)

Veuillez télécharger l'archive contenant le jeu via un des tags GitHub les plus récents.
Trouvez-y l'exécutable "RubyDungeon.exe", que vous pouvez simplement exécuter afin de jouer au jeu. 

Veuillez ne pas bouger l'exécutable de son dossier (il nécessite le contenu du sous-dossier RubyDungeon-Extended pour pouvoir fonctionner).
Le contenu du sous-dossier Correction, en revanche, est entièrement oubliable.

## Paramètres de terminal conseillés

Afin que le jeu tourne dans des conditions optimales, il est conseillé que le terminal **soit en plein écran au démarrage**.

Il est également conseillé d'utiliser la police d'écriture "Consola" pour un affichage optimal du jeu.

Vous pouvez modifier les paramètres du terminal par défaut de Windows 11 lorsque celui-ci est ouvert (cmd) en faisant un clic droit sur la barre au sommet de la page, là où se trouvent les onglets, et en choisissant l'option "Paramètres".
Vous pouvez également activer et désactiver le plein écran via le raccourcis **Alt + Entrée**

Enfin, si vous possédez un petit écran, lors du lancement du jeu veuillez vous rendre dans le menu "Options" afin de vous assurer que les images sont paramétrées avec la bonne taille.
Si même l'affichage des images en petit ne permet pas de rendre le jeu lisible entièrement dans votre écran, tentez de réduire la police d'écriture de votre terminal dans ses options égalements.

Une fois dans l'onglet des paramètres, vous pouvez changer :
- L'affichage en plein écran dans **Démarrage > Taille au lancement**
- La police d'écriture dans **Profils > Par défault > Apparence > Type de police**
- La taille de police dans **Profils > Par défault > Apparence > Taille de police**



### Note pour les devs

Pour la mise à jour du fichier éxécutable après modification du code, veuillez éxécuter la commande
``ocran RubyDungeon.rb --icon RubyDungeon-Extended/Assets/dungeon.ico``

Puis sélectionnez l'option "quitter" lorsque le jeu se lancera
