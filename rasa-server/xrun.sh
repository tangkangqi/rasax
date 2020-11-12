#bash build.sh
#docker stop rasax
#docker rm rasax
docker run -itd --rm --name rasax -p 8001:5002 tkq-rasa:4.0
