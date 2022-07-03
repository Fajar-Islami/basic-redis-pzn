docker exec -it redis_basic_2 bash

redis-cli -h localhost

### Operasi Data String
set fajar1 "ahmad fajar islami"
set fajar1 "ahmad fajar islami" # akan replace value yang lama
set fajar2 "ahmad fajar"
set fajar3 "ahmad fajar"

get fajar1
get fajar2
get fajar3
get fajar4 # (nil)

exists fajar # 0 (data tidak ada)
exists fajar1 # 1 (data ada)

del fajar # 0 (tidak ada data yang didelete)
del fajar1 fajar2 fajar3 # 3 (semua data dihapus)

# append
set fajar1 "fajar"
append fajar1 " islami" #12 
get fajar1 #"fajar islami"

append fajar2 "ahmad" # append bisa digunakan untuk insert data juga
get fajar2 # "ahmad"

# keys pattern
keys fajar* # untuk melihat key nya
keys *1


### Operasi Range Data String
getrange fajar1 0 3 # "faja"
getrange fajar1 6 11 # "islami"

setrange fajar1 0 ahmad
get fajar1 # "ahmad islami"


### Operasi Multiple Data String
mget fajar1 fajar2 fajar3
# 1) "asasasaslami"
# 2) "ahmad"
# 3) (nil)

mset fajar3 "fajar3" fajar4 "ahmad4" fajar5 "islami5"
keys *
# 1) "fajar2"
# 2) "fajar1"
# 3) "fajar4"
# 4) "fajar5"
# 5) "fajar3"

mget fajar1 fajar2 fajar3 fajar4 fajar5
# 1) "asasasaslami"
# 2) "ahmad"
# 3) "fajar3"
# 4) "ahmad4"
# 5) "islami5"