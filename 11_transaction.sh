# enter redis exec
docker exec -it redis_basic_3 bash

redis-cli -h localhost
set fajar fajar
del fajar fajar

# Transaction
multi
set fajar fajar
set fajar2 ahmad2
exec
get fajar


multi
set fajar3 ahmad1
set fajar4 ahmad4
set fajar5
exec # EXECABORT Transaction discarded because of previous errors.


multi
set fajar3 100000
set ahmad1 100000
set islami1 100000
exec 


# abort
multi
set a a
set b b
set c c
discard