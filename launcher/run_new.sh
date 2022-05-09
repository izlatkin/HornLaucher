python3.9 -u /home/fmfsu/PyCharm/launcher/TestGenTestCov2.py \
--input_source /home/fmfsu/Benchs/openssl-simplified_updated \
--docker_sea true
cp -r ../sandbox2 /home/fmfsu/results/s3_openssl_updated/TG_lb_lt
python3.9 -u /home/fmfsu/PyCharm/launcher/TestGenTestCov2.py \
--input_source /home/fmfsu/Benchs/sv-benchmarks/c/memsafety \
--docker_sea true
cp -r ../sandbox2 /home/fmfsu/results/memsafety/TG_lb_lt
python3.9 -u /home/fmfsu/PyCharm/launcher/TestGenTestCov2.py \
--input_source /home/fmfsu/Benchs/product-lines_u \
--docker_sea true
cp -r ../sandbox2 /home/fmfsu/results/product-lines/TG_lb_lt