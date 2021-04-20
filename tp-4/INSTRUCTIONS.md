# Formation Docker - TP4

## Mise en place d'un réseau bridge

*Pour ce TP vous n'aurez pas d'image à déposer sur votre registry docker hub*

Objectif :

Mettre en relation deux conteneurs avec un réseau de type User defined bridge.

Voici les images à connecter sur le même réseau :
- training/postgres
- training/webapp

Vous devez ensuite être capable de faire un ping entre chaque conteneur.

### RESULTATS

1. Création du réseau bridge-1

```
docker network create -d bridge bridge-1
```

2. Lancement du container db sur le réseau bridge-1

```
docker run -d --name db --network bridge-1 training/postgres
```

3. Création du container webapp sur le même sous réseau

```
docker run -d -P --name webapp --network bridge-1 --link db:db training/webapp python app.py
```

