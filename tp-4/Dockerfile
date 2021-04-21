docker network create mydocker-network

docker create --name webapp --network mydocker-net training/webapp
docker create --name database --network mydocker-net training/postgres
  
docker run -d --name database training/postgres
docker run -d -P --name webapp --link database:database training/webapp python app.py

docker network connect mydocker-net webapp
docker network connect mydocker-net database
