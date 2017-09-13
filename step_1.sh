sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install python-pip git wget
sudo pip -y install tensorflow
sudo apt-get -y install protobuf-compiler python-pil python-lxml
sudo pip -y install jupyter
sudo pip -y install matplotlib
sudo mkdir data
sudo git clone https://github.com/tensorflow/models
sudo cp -R ./models/slim/deployment ./models/
sudo cp -R ./models/slim/deployment ./models/object_detection/
sudo cp -R ./models/slim/nets ./models/
sudo cp -R ./models/slim/nets ./models/object_detection/
cd models
sudo protoc object_detection/protos/*.proto --python_out=.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
sudo python object_detection/builders/model_builder_test.py
sudo python setup.py install
cd ..
