Création de l'environnement de dévéloppement avec Visual Studio Code 

1 Creation de dossier " .devcontainer " à la racine du projet

2 On ajoute trois fichier dans le dossier viens juste de créer.
     - docker-compose.yml
     - Dockerfile
     - devcontainer.json
        
    * docker-compose.yml
        version: '3.7'
              services: 
                app:
                  build: 
                    context: .
                  environment: 
                    MYSQL_HOST: db
                    MYSQL_USER: root
                    MYSQL_PASSWORD: mypassword
                    MYSQL_DB: app
                  volumes: 
                    - ../:/app
                    - nodemodule:/app/node_modules
                  ports: 
                    - 3000:3000
                  networks: 
                    - appnet
                  depends_on: 
                    - db
                db:
                  image: mysql:5.7
                  environment:
                    MYSQL_ROOT_PASSWORD: mypassword
                    MYSQL_DATABASE: app
                  networks: 
                    - appnet

                adminer:
                  image: adminer
                  ports:
                    - 8082:8080
                  networks: 
                    - appnet

              volumes: 
                nodemodule:

              networks: 
                appnet:   
     
    * Dockerfile : 
        FROM node:12-alpine
        WORKDIR /app
        COPY ./package.json ./
        RUN npm install --silent
        ENTRYPOINT [ "npm", "run", "dev" ]  
        
     * devcontainer.json
          {
              "name": "devcontainer",
              "dockerComposeFile": "docker-compose.yml",
              "service": "app",
              "settings": {
              "terminal.integrated.shell.linux": "/bin/sh" // Par défaut /bin/bash peux être modifié en fonction du terminal dispo 

              },
              "forwardPorts": [ // Port transféré avec votre machine hôte
                              3000
              ],
              "workspaceFolder": "/app", // Dossier de travail de votre VSCode au sein de votre conteneur,
              "extensions": [ // Extensions installé lors du lancemenet de votre remote container dans votre VSCode
                   "msjsdiag.debugger-for-chrome",

              ]
           }
   
 3 On a rajouté le fichier 'package.json ' pour rapatrier les dependences.
 
 4 On execute le docker-compose up
 
 5 Sur VsCode, clique en bas à gauche en vert sur l'icône " >< " puis en haut sur "Remote-Container: Open Folder in Container" pour ouvrir le projet dans le conteneur.
 
 
 
