# enter redis exec
docker exec -it redis_basic_3 bash

redis-cli -h localhost

info
info keyspace
info memory


config help
config get *
config get databases


slowlog help
slowlog get
slowlog get 10 
