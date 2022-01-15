

def main():
    target_dir = "/home/fmfsu/Benchs/sv-benchmarks/c"
    list_of_subdirs = ["ldv-validator-v0.6",
                       "ldv-validator-v0.8",
                       "list-ext-properties",
                       "list-ext2-properties",
                       "list-ext3-properties"]
    for l in list_of_subdirs:
        # Step 1
        # run python script
        # ssh://fmfsu@grigory1.cs.fsu.edu:22/usr/bin/python3.9
        # -u /home/fmfsu/PyCharm/launcher/TestGenTestCov.py --input_source
        #/home/fmfsu/Benchs/sv-benchmarks/c/list-ext-properties/list-ext_2.c --docker_sea true

        # Step 2
        # goto sandbox, zip sandbox , move sandbox to store box


if __name__ == "__main__":
    main()