
Type de stockage = Bind mount

docker run -d --name pgadmin4 -e PAGADMIN_DEFAULT_PASSWORD=mypassword -e PGADMIN_DEFAULT_EMAIL=sahobi.rakotomalala@labom2iformation.fr --network pdadminnet dpage/pgadmin4

docker run -d -p 5002:80 --name pgadmin4 -e PAGADMIN_DEFAULT_PASSWORD=mypassword PGADMIN_DEFAULT_EMAIL=sahobi.rakotomalala@labom2iformation.fr --network pdadminnet dpage/pgadmin4

docker network create pgadminnet 

docker run -d --name demopgadmin -e PGADMIN_DEFAULT_PASSWORD=mypassword -v demopgadmin:/var/lib/postgresql/data --network pgadminnet postgres

docker run -d -p 5002:80 --name pgadmin4 -e PGADMIN_DEFAULT_PASSWORD=mypassword -e PGADMIN_DEFAULT_EMAIL=sahobi.rakotomalala@labom2iformation.fr   --network pgadminnet dpage/pgadmin4

- sur le navigateur connecter sur pgadmin puis connecter sur postgers(container)

