# Cheat sheet Docker
Voici la cheat sheet officiel : 
Le PDF :  [https://www.docker.com/sites/default/files/d8/2019-09/docker-cheat-sheet.pdf](https://docs.docker.com/get-started/docker_cheatsheet.pdf)
Le site : https://www.docker.com/resources/cli-cheat-sheet/


## Commande docker :

```properties
docker pull # Télécharger une image à partir d’un registry (par défaut docker hub)*** 

docker images # Lister les images téléchargées, dans votre registry local 

docker container ls # Lister les conteneurs avec leur ID (par défaut, uniquement ceux en cours d’exécution), avec l’option –all, affiches tous les conteneurs 

docker run <IMAGE> # Exécuter l’image demandé, si non présente dans le registry local celle-ci est téléchargé si disponible sur le registry par défaut 

docker container stop <CONTAINER ID> # Pour éteindre un conteneur

docker exec –it <CONTAINER ID> /bin/bash # Pour rentrer dans un conteneur en mode bash 

docker container rm < CONTAINER ID > # Pour supprimer un conteneur 

docker image rm <IMAGE ID> # Pour supprimer une image 

docker image prune # Pour supprimer les images qui ne sont pas utilisées

docker build -t <TAG NAME> . # Pour construire l’image docker à partir d’un fichier Dockerfile. L’option -t = nom de l’image et le point est le contexte associé, donc ici . le dossier courant, cela ira chercher le Dockerfile dans ce dossier par défaut
```

## Instructions Dockerfile

```Dockerfile
# A partir de l'image. Cette instruction est obligatoire, un dockerfile doit toujours avoir une source d'image 
#(Linux vierge, mysql, postgres, nodejs ou autre)
FROM baseImage 

# Permet d’exécuter  une commande linux (ou windows si conteneur windows). 
# Cette commande ajoutera une couche a votre image et sera exécuter à la construction de l’image
RUN command  

# Ajout d'un point de montage avec un nom spécifié et est désigné comme volume externe au conteneur.
VOLUME [ "/data" ]  

# Permet de définir un dossier de travail
WORKDIR /the/workdir/path  

# Cette instruction peut être présente qu'une seule fois dans le dockerfile. Cela permet de définir la commande a exécuter lors du lancement du conteneur
CMD [ "executable" ]  

# Permet de définir une variable d'environement au sein du conteneur
ENV key=value  

#  Permet d'assigner un utilisateur qui sera utilisé pour executer les différentes commandes
USER daemon  

#  Permet de copier un fichier ou un dossier à partir de la machine hôte qui construit le conteneur
COPY source dest  
```
D’autres instructions sont disponibles, ce référencer à la doc :
https://docs.docker.com/engine/reference/builder/


## Dockerignore

```properties
# La ligne suivante sera ignorée dans le dockerignore
# comment 

# Exclure tous les fichiers / dossiers commençant par ‘temp’ de tous les sous dossiers direct à partir de la racine (ex: subdir/temporary.txt)
*/temp* 

# Exclure tous les fichiers / dossiers commençant par ‘temp’ de tous les sous dossiers du deuxième niveau (ex: subdir/subsubdir/temporary.txt)
*/*/temp* 

# Exclure tous les fichiers / dossiers à partir de la racine commençant par ‘temp’ et ayant un seul caractère ensuite (ex: /tempa)
temp?

# Exclure dans tous les sous dossiers les fichiers / dossiers temp
**/temp*
```

## Commande docker dédiée au réseau

```properties
# Connecter un réseau à un conteneur
docker network connect <NETWORK NAME> <CONTAINER NAME>

# Créer un réseau
docker network create -d bridge <NETWORK NAME>

# Déconnecter un conteneur d'un réseau
docker network disconnect <NETWORK NAME> <CONTAINER NAME>

# Afficher les détails d'un ou plusieurs réseau
docker network inspect <NETWORK NAMES...>

# Lister vos réseaux
docker network ls

# Supprime vos réseaux non utilisé
docker network prune

# Suprime un ou plusieurs réseaux
docker network rm <NETWORK NAMES...>
```

## Commande docker dédiée aux volumes

```properties
# Créer un volume 
docker volume create my-vol 

# Lister les volumes 
docker volume ls 

# Inspecter un volume 
docker volume inspect my-vol 

# Supprimer un volume 
docker volume rm my-vol 

# Supprimer les volumes non utilisé (Attention !!) 
docker volume prune 
```
