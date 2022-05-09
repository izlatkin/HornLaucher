python3.9 -u /home/fmfsu/PyCharm/launcher/TestGenTestCov3.py \
--input_source /home/fmfsu/Benchs/openssl-simplified_updated \
--docker_sea true
cp -r ../sandbox3 /home/fmfsu/results/s3_openssl_updated/TG_old
python3.9 -u /home/fmfsu/PyCharm/launcher/TestGenTestCov3.py \
--input_source /home/fmfsu/Benchs/sv-benchmarks/c/memsafety \
--docker_sea true
cp -r ../sandbox3 /home/fmfsu/results/memsafety/TG_old
python3.9 -u /home/fmfsu/PyCharm/launcher/TestGenTestCov3.py \
--input_source /home/fmfsu/Benchs/product-lines_u \
--docker_sea true
cp -r ../sandbox3 /home/fmfsu/results/product-lines/TG_old