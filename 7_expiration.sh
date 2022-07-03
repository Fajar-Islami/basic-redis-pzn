# enter redis exec
docker exec -it redis_basic_2 bash

redis-cli -h localhost

ttl fajar1 # -1 (artinya tidak akan pernah expire)

# agar expire dalam 1 menit
expire fajar1 60
ttl fajar1 # -2 (berarti expire)

setex fajar6 60 "contoh"
ttl fajar6


get fajar6

keys *
# 1) "fajar2"
# 2) "fajar4"
# 3) "fajar5"
# 4) "fajar3"