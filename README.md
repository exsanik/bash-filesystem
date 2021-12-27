## bash file creation

run `lab1.sh <amountOfNumberToCreate>`

## Done:
- 1. Create Virtual Machine in VirtualBox or other virtualization software with Linux. (For example, Ubuntu) **done via Dockerfile CMD command**
- 2. Create script which do following:
- A) Creates in home folder of your user directory hw1 and  2 directories inside it: /bin and /data, Than it copying itself to the ~/hw1/bin directory and makes itself executable.
- C) It creates several text files with random float numbers (no more than 5 random numbers in each file). Count of random numbers which should be generate can be set as positional argument to script. For example: scriptname.sh 25 - wil be generated 5 files with 5 random numbers in each. Filenames can be sequencial.
- D) Make this filenames random, avoid collisions with existing filenames.
- E) If large count of random numbers were entered, for example > 500,  script should continue to generate random numbers after break and will not copy itself, will not create folders one more time. For example, I stopped the script by ctrl+c after 3 second and it have generated 100 files. In next run it will not re-generate this 500 numbers, but it will continue to generate from 501 random number. 
- F) Make this script running automaticlly after start of virtual machine. It should have same behaviour with continue after break as described in ( E ) point **done via Dockerfile CMD command**
