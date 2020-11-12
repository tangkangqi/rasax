bash build.sh
#docker stop tkq-rasa
#docker rm tkq-rasa
docker run -itd --name rasa -p 5003:5002 rasa/rasa-x
