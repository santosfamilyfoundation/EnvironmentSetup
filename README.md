# EnvironmentSetup
Repository for setting up development environments.
SCOPE 2015-2016

## Installing OpenCV3/Python 3.4: 

These instructions have been adapted largely from http://www.pyimagesearch.com/2015/07/20/install-opencv-3-0-and-python-3-4-on-ubuntu/. 

These instructions use Ubuntu 14.04 LTS. Other varieties may work, but 14.04 is recommended.
Before proceeding, please run `sudo apt-get update` and `sudo apt-get upgrade`. 
Please verify that `python3` opens a python 3.4 interpreter.

If this is the case, we suggest connecting to the network via ethernet (the OpenCV repo is ~1GB). Open a terminal and run the `dependencies_opencv.sh`. When this has finished, open a new terminal or execute `source ~/.bashrc`. Then run `mkvirtualenv SCOPE`. You should see that you are 'in' your virtual environment [e.g. the current line of your terminal should be prefaced with "(SCOPE)"]. Please be sure that you are running with this virtual environment active.

Next run `make_opencv.sh`. This will take a non-trivial amount of time (probably at least a half an hour).

If this completes successfully, run `install_opencv.sh`.


## Misc. 
You can rename your vitualenv if you are so inclined. Change the reference to SCOPE in a filepath in `install_opencv.sh` to whatever you created when you ran `mkvirtualenv`.