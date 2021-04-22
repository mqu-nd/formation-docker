
# Construction de(s) images(s)

PS TP7> docker-compose build

```
Building backend
[+] Building 0.1s (9/9) FINISHED
 => [internal] load build definition from Dockerfile                       0.0s
 => => transferring dockerfile: 31B                                        0.0s
 => [internal] load .dockerignore                                          0.0s
 => => transferring context: 2B                                            0.0s
 => [internal] load metadata for docker.io/library/node:latest             0.0s
 => [1/4] FROM docker.io/library/node                                      0.0s
 => [internal] load build context                                          0.0s
 => => transferring context: 34B                                           0.0s
 => CACHED [2/4] WORKDIR /home/app                                         0.0s
 => CACHED [3/4] COPY ./package.json ./                                    0.0s
 => exporting to image                                                     0.0s
 => => exporting layers                                                    0.0s
 => => writing image sha256:a313fbbc13fe2127e56afab9bebe573b7d39f2ae6c04f  0.0s
 => => naming to docker.io/library/tp7_backend                             0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
Successfully built a313fbbc13fe2127e56afab9bebe573b7d39f2ae6c04f49675519428a541c591
Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
```

# Lancement du service

PS TP7> docker-compose up

```
Docker Compose is now in the Docker CLI, try `docker compose up`

Starting tp7_backend_1 ... done
Attaching to tp7_backend_1
backend_1  | 
backend_1  | > 101-app@1.0.0 dev
backend_1  | > nodemon src/index.js
backend_1  |
backend_1  | [nodemon] 1.19.4
backend_1  | [nodemon] to restart at any time, enter `rs`
backend_1  | [nodemon] watching dir(s): *.*
backend_1  | [nodemon] watching extensions: js,mjs,json
backend_1  | [nodemon] starting `node src/index.js`
backend_1  | Using sqlite database at /etc/todos/todo.db
backend_1  | Listening on port 3000
````

# Test du service

Ouverture d'un navigateur sur le port 3000

# Utilisation multi-container

Utilisation du fichier compose docker-compose-tp7.yml à la place du fichier du fichier docker-compose.yml
