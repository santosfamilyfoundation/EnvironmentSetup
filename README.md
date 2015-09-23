# EnvironmentSetup
Repository for setting up development environments.
SCOPE 2015-2016

## Installing OpenCV3: 

These instructions have been taken largely from http://www.pyimagesearch.com/2015/07/20/install-opencv-3-0-and-python-3-4-on-ubuntu/. 

Please use Ubuntu 14.04 LTS. 
Before proceeding, please run `sudo apt-get update` and `sudo apt-get upgrade`. 
Please verify that `python3` opens a python 3.4 interpreter.

If this is the case, we suggest connecting to the network via ethernet (the OpenCV repo is ~1GB). Open a terminal and run the `dependencies_opencv.sh`. When this has finished, open a new terminal or execute `source ~/.bashrc`. Then run `make_opencv.sh`. This will take a non-trivial amount of time (probably at least a half an hour).

If this completes successfully, run `install_opencv.sh`.
