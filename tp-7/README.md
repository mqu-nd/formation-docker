-- Dans le projet getting-started

    1 - Modification de docker-compose.yml : 
           - mise en place de node pour faire tourner l'application Js(React pour le front et nod en back)
           - définition de l'application et son repertoire de travail.
           - définition de ports à partager. 
           - mise en place de la base de données mySQL.
           - définition de volume pour persister les données.
           - ---------------docker-compose.yml --------------
                    version: "3.7"
                    services:
                    app:
                        image: node:12-alpine
                        command: sh -c "yarn install && yarn run dev"
                        ports:
                        - 3000:3000
                        working_dir: /app
                        volumes:
                        - ./app:/app 
                        environment:
                        MYSQL_HOST: mysql
                        MYSQL_USER: root
                        MYSQL_PASSWORD: secret
                        MYSQL_DB: todos

                    mysql:
                        image: mysql:5.7
                        volumes:
                        - todo-mysql-data:/var/lib/mysql
                        environment:
                        MYSQL_ROOT_PASSWORD: secret
                        MYSQL_DATABASE: todos

                    volumes:
                    todo-mysql-data:
            ---------------------------------------------------------
               
    2  Lancement de la commande docker-compose up 
    
