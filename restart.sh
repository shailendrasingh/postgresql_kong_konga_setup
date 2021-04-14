docker-compose stop
sleep 10
sudo kill -9 $(sudo lsof -t -i:5432)
sleep 5
docker-compose restart
sleep 10
docker-compose ps


# Add following connection to Konga GUI
# http://kong:8001
