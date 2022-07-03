docker compose up -d redis_basic_5 redis_client_5

# enter redis exec
docker exec -it redis_basic_5 bash
docker exec -it redis_client_5 bash

redis-cli -h localhost
redis-cli -h redis_basic_5

# autentikasi
auth fajar rahasia

set tes1 test1
set tes2 test2
set tes3 test3

# ganti user
redis-cli -h redis_basic_5
auth ahmad rahasia

get tes1
get tes2
set tes1 fajar #gagal ((error) NOPERM this user has no permissions to run the 'set' command or its subcommand)

#ganti user
redis-cli -h redis_basic_5
auth islami rahasia

get tes1 #
get tes2
set tes1 fajar #gagal ((error) NOPERM this user has no permissions to run the 'set' command or its subcommand)
