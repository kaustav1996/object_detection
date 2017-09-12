sudo git clone https://github.com/tzutalin/labelImg
sudo apt-get install pyqt4-dev-tools
sudo pip install lxml
cd labelImg
make qt4py2
cd ..
python ./labelImg/labelImg.py
