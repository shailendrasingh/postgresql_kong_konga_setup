docker network create kong-net
docker-compose up --build -d kong-db kong-migrations
sleep 10
docker-compose ps
#docker-compose run --rm kong kong migrations bootstrap
#sleep 10
docker-compose up -d kong
sleep 10
docker-compose ps
docker-compose up -d konga
sleep 10


# Add following connection to Konga GUI
# http://kong:8001