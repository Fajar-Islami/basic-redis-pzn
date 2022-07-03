# enter redis exec
docker exec -it redis_basic_3 bash

# masuk ke direktori
cd /usr/local/etc/command
cat sets.txt | redis-cli -h localhost --pipe # mengirimkan semua perintah ke pipeline redis

redis-cli -h localhost
keys *