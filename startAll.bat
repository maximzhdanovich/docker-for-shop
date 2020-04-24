docker-compose build mysql
docker-compose up -d mysql
docker-compose build shop
docker-compose up -d shop
docker exec -i test-mysql sh -c "exec mysql -uroot -proot < /script/database.sql"
docker exec -i test-mysql sh -c "exec mysql -uroot -proot < /script/insert.sql"
pause