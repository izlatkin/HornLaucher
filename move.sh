ssh fmfsu@grigory1.cs.fsu.edu 'rm -rf /home/fmfsu/PyCharm/sandbox.zip'
ssh fmfsu@grigory1.cs.fsu.edu 'cd /home/fmfsu/PyCharm; zip -r sandbox.zip sandbox'
scp fmfsu@grigory1.cs.fsu.edu:~/PyCharm/sandbox.zip ~/Downloads/.
