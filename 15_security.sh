docker compose up -d redis_basic_4 redis_client_4

# enter redis exec
docker exec -it redis_basic_4 bash
docker exec -it redis_client_4 bash

redis-cli -h localhost
redis-cli -h redis_basic_4

