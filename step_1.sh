sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install python-pip git wget
sudo pip install tensorflow
sudo apt-get -y install protobuf-compiler python-pil python-lxml
sudo pip install jupyter
sudo pip install matplotlib
sudo pip install pandas
sudo mkdir data
sudo git clone https://github.com/tensorflow/models
sudo cp -R ./models/research/slim/deployment ./models/research/
sudo cp -R ./models/research/slim/deployment ./models/research/object_detection/
sudo cp -R ./models/research/slim/nets ./models/research/
sudo cp -R ./models/research/slim/nets ./models/research/object_detection/
sudo cp -R ./models/research/slim/nets ./models/research/object_detection/builders/
cd models/research/
sudo protoc object_detection/protos/*.proto --python_out=.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
sudo python setup.py install
sudo python ./object_detection/builders/model_builder_test.py
