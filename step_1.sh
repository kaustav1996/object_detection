sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-pip git wget
sudo pip install tensorflow
sudo apt-get install protobuf-compiler python-pil python-lxml
sudo pip install jupyter
sudo pip install matplotlib
sudo mkdir data
sudo git clone https://github.com/tensorflow/models
cd models
sudo protoc object_detection/protos/*.proto --python_out=.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
sudo python object_detection/builders/model_builder_test.py
sudo python setup.py install
cd ..
