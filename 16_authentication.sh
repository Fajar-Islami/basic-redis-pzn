docker compose up -d redis_basic_5 redis_client_5

# enter redis exec
docker exec -it redis_basic_5 bash
docker exec -it redis_client_5 bash

redis-cli -h localhost
redis-cli -h redis_basic_5

# autentikasi
auth fajar rahasia