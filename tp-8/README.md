Récupération de la correction du TP7 pour partir sur une bonne base.

Création du dossier caché .devcontainer à la racine du tp-8
Création du fichier devcontainer.json dans ce dossier.
Déplacement du dockerfile et docker-compose.yml dans ce dossier.
Copie du package.json dans ce même dossier pour pallier à une erreur du build de l'app container.

Quelques modifications pour refléter les changements dans l'arborescence projet :

Docker-compose.yml:
    - changement du path du volume de './:/app'  vers  '../:/app'
Dockerfile:
    - inchangé, mais copie locale du fichier package.json pour remédier au bug, car l'instruction COPY ../package.json ./ ne fonctionnait pas, le json restait introuvable.


Installation du module Remote-container dans VSCode.

Depuis le dossier .devcontainer, possibilité de lancer un docker-compose up pour lancer le build et les 3 containers. Puis de clic-droit sur l'un d'eux pour rattacher un VSCode pour browse la machine.

Soit depuis le menu déroulant F1 -> Remote Container - Open Folder in Container, choisir le dossier tp8 en source, puis choisir l'un des conteneurs lancés à explorer.