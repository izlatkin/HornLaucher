# docker pull seahorn/seahorn-llvm10:nightly
#docker run --rm -it seahorn/seahorn-llvm10:nightly
#docker ps --format 'CONTAINER ID : {{.ID}} | Name: {{.Names}} | Image:  {{.Image}} |  Ports: {{.Ports}}'
#how to get container name
#docker ps --format "table {{.Names}}" -f ancestor=seahorn/seahorn-llvm10:nightly | tail -1
#docker exec `docker ps --format "table {{.Names}}" -f ancestor=seahorn/seahorn-llvm10:nightly | tail -1` bash -c "sea -h"
#docker ps -aqf "name=seahorn/seahorn-llvm10:nightly"
#docker exec gifted_ellis bash -c "sea -h"
#echo "done"

docker pull seahorn/seahorn-llvm10:nightly
docker run --rm -it --mount type=bind,source=/Users/ilyazlatkin/PycharmProjects/HornLauncher/sandbox,target=/app \
seahorn/seahorn-llvm10:nightly

docker exec \
`docker ps --format "table {{.Names}}" -f ancestor=seahorn/seahorn-llvm10:nightly | tail -1` \
bash -c "cd /app; sea fe testgen.c -o test.bc; sea --horn-no-verif horn test.bc -o test.smt2"


docker pull klee/klee:2.1
docker run --rm -ti --ulimit='stack=-1:-1' --mount type=bind,source=/tmp/c_file_2,target=/app klee/klee:2.1

clang -I ../../include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone get_sign.c
clang -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone get_sign.c