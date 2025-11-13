LOCALHOST_IP=`ipconfig getifaddr en0`
echo $LOCALHOST_IP
docker-compose up -d
