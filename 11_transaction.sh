# enter redis exec
docker exec -it redis_basic_3 bash

redis-cli -h localhost

monitor # butuh 2 window

set tes fajar
set tes1 fajar1


# di monitor muncul
# 1656824265.293446 [0 127.0.0.1:34464] "set" "tes" "fajar"
# 1656824268.358355 [0 127.0.0.1:34464] "set" "tes1" "fajar1"