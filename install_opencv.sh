echo "Installing OpenCV";
cd ~/opencv/build;
sudo make install;
sudo ldconfig;
echo "Creating simlink to SCOPE virtual environment";
cd ~/.virtualenvs/SCOPE/lib/python3.4/site-packages/;
ln -s /usr/local/lib/python3.4/site-packages/cv2.cpython-34m.so cv2.so;
echo "Installation complete. To access this environment from the command-line, run \"workon SCOPE\". Pretty reasonable.";
