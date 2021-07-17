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