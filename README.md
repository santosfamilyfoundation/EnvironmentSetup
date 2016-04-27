# EnvironmentSetup
Repository for setting up development environments. This repository provides scripts for setting up a Linux development environment with Python 3.4 and OpenCV3. This environment was to be used for the development of a mobile, low-power computer-vision system.

This was developed by the 2015-2016 SCOPE Team at the beginning of the academic year.

## Raspberry Pi 2
### Ubuntu MATE
On Ubuntu MATE, there is a [known bug](https://bugs.launchpad.net/ubuntu/+source/policykit-1/+bug/1447654) with policykit1. This is not a package specific to our code, but it will not work with the procedure outlined below. For this reason, we suggest using Raspbian (not Ubuntu) on Raspberry Pi computers. Ubuntu 14.04 LTS was used on larger development computers.

## Installing OpenCV3/Python 3.4: 

These instructions have been adapted largely from http://www.pyimagesearch.com/2015/07/20/install-opencv-3-0-and-python-3-4-on-ubuntu/. 

These instructions use Ubuntu 14.04 LTS. Other varieties may work, but 14.04 is recommended.
Before proceeding, please run `sudo apt-get update` and `sudo apt-get upgrade`. 
Please verify that `python3` opens a python 3.4 interpreter.

If this is the case, we suggest connecting to the network via ethernet (the OpenCV repo is ~1GB). Open a terminal and run the `dependencies_opencv.sh`. When this has finished, open a new terminal or execute `source ~/.bashrc`. Then run `mkvirtualenv SCOPE`. You should see that you are 'in' your virtual environment [e.g. the current line of your terminal should be prefaced with "(SCOPE)"]. Please be sure that you are running with this virtual environment active.

Next run `make_opencv.sh`. This will take a non-trivial amount of time (probably at least a half an hour). On a Raspberry Pi 2, it takes about 110 minutes just to download and setup numpy and scipy. Installing all python dependencies takes around 3 hours. In its entirety, this step took around 5 and a half hours on a Raspberry Pi 2. Start it before you go to bed.

If this completes successfully, run `install_opencv.sh`.


## Misc. 
You can rename your vitualenv if you are so inclined. Change the reference to SCOPE in a filepath in `install_opencv.sh` to whatever you created when you ran `mkvirtualenv`.
