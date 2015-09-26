echo "Type the number of cores you have available for building opencv (integer >1), followed by [ENTER]:";

read cores;

# Python dependencies
echo "Installing numpy, scipy, statsmodels, matplotlib, pandas, seaborn, and scikit-learn.";
sudo apt-get install -y python3.4-dev;
pip install numpy;
pip install scipy;
pip install statsmodels;
pip install matplotlib;
pip install seaborn;
pip install scikit-learn;

# Get OpenCV 3
echo "Downloading OpenCV Repository";
cd ~;
git clone https://github.com/Itseez/opencv.git;
cd opencv;
git checkout 3.0.0;
echo "Downloading OpenCV_Contrib Repository";
cd ~;
git clone https://github.com/Itseez/opencv_contrib.git;
cd opencv_contrib;
git checkout 3.0.0;

echo "Preparing to make OpenCV";
cd ~/opencv;
mkdir build;
cd build;
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
	-D BUILD_EXAMPLES=ON ..;
make -j$cores;

