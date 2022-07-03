# enter redis exec
docker exec -it redis_basic_2 bash

redis-cli -h localhost

keys *

select 1
keys *
flushdb

select 0 # data masih ada
select 1 
set fajar fajar
set ahmad ahmad
set islami islami
keys *
flushdb
keys *

select 5
set fajar fajar
set ahmad ahmad
keys *
flushall # menghapus data di semua database
keys *