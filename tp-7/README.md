# Application Todo

## Description

Application de gestion de tâches (liste de choses à faire) qui permet de :

### Fonctionnalités
- **Créer des tâches** : Ajouter de nouvelles tâches à faire
- **Marquer comme terminées** : Cocher les tâches accomplies  
- **Supprimer des tâches** : Retirer les tâches de la liste
- **Visualiser la liste** : Voir toutes les tâches en cours et terminées

### Architecture technique
- **Frontend** : React avec Vite pour une interface moderne et interactive
- **Backend** : Node.js pour gérer la logique métier et les API
- **Base de données** : MySQL pour stocker les tâches de manière persistante
- **Administration** : phpMyAdmin pour visualiser et gérer la base de données

## Démarrage

Pour lancer l'application :

```bash
docker compose up
```

L'application sera accessible sur [http://localhost:3000](http://localhost:3000)


## Arrêt

Pour arrêter l'application :

```bash
docker compose down
```
