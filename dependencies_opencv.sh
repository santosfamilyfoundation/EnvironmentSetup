echo "Installing Dependencies"
sudo apt-get install -y build-essential cmake git pkg-config;
sudo apt-get install -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev;
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev;
sudo apt-get install -y libgtk2.0-dev;
sudo apt-get install -y libatlas-base-dev gfortran;
wget https://bootstrap.pypa.io/get-pip.py;
sudo -H python3 get-pip.py;
sudo -H pip3 install virtualenv virtualenvwrapper;

# Update ~/.bashrc
echo "Modifying .bashrc";
echo "# virtualenv and virtualenvwrapper" >> ~/.bashrc;
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc;
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc;
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc;
