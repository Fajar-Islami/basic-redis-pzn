# enter redis exec
docker exec -it redis_basic_2 bash

redis-cli -h localhost

keys *

incr counter # tidak harus datanya dulu
get counter 
incr counter
get counter 
decr counter 
get counter 


incr fajar2 #ERR value is not an integer or out of range


get counter 
incrby counter 10
get counter #11
decrby counter 5
get counter #6
