Récupération en local des deux images et run en headless avec un nom raccourci

docker run -d --name pstgr training/postgres
docker run -d --name webpp training/webapp

docker network create -d bridge my_net_bridge

docker network connect my_net_bridge pstgr
docker network connect my_net_bridge webpp


Connexion avec clic droit - attach shell  ou commande docker exec -it <container id from 'docker ps'> /bin/bash

Les deux machines se ping mutuellement