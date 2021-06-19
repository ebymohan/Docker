docker build --force-rm -t mysqlimage .
docker container run -dt -p 3306:3306 --name mysql mysqlimage
