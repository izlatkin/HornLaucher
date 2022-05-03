export IN_DIR=/home/fmfsu/Benchs/experiments
export RESULT_DIR=/home/fmfsu/results/experiments

python3.9 -u /home/fmfsu/PyCharm/launcher/VeriFuzzLauncher.py --input_source ${IN_DIR} \
--output_dir ${RESULT_DIR}/verifuzz_sandbox
python3.9 -u /home/fmfsu/PyCharm/launcher/KleeLauncher.py --input_source ${IN_DIR} \
--output_dir ${RESULT_DIR}/klee_sandbox
python3.9 -u /home/fmfsu/PyCharm/launcher/FuseBMCLauncher.py --input_source ${IN_DIR} \
--output_dir ${RESULT_DIR}/fusebmc_sandbox
python3.9 -u /home/fmfsu/PyCharm/launcher/LibKluzzerLauncher.py --input_source ${IN_DIR} \
--output_dir ${RESULT_DIR}/LibKluzzer_sandbox
python3.9 -u /home/fmfsu/PyCharm/launcher/CmaesfuzzLauncher.py --input_source ${IN_DIR} \
--output_dir ${RESULT_DIR}/cmaesfuzz_sandbox
python3.9 -u /home/fmfsu/PyCharm/launcher/PrtestLauncher.py --input_source ${IN_DIR} \
--output_dir ${RESULT_DIR}/prtest_sandbox