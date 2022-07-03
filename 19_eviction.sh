docker compose up -d redis_basic_5 redis_client_5

# enter redis execs
docker exec -it redis_basic_5 bash
docker exec -it redis_client_5 bash

redis-cli -h localhost

auth fajar rahasia
keys *

# lalu matikan dan hidupkan ulang container