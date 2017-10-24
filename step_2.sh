echo "[1] Mobilenet -fast -less accurate"
echo "[2] RCNN      -slow -more accurate"
read -p "Choose Detection Model: " x
if [[ "$x" == "1" ]]; then
	sudo wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz
	sudo tar -xvf ssd_mobilenet_v1_coco_11_06_2017.tar.gz
	sudo mv ssd_mobilenet_v1_coco_11_06_2017 ./models/research/object_detection/models/model
	sudo cp ./models/research/object_detection/samples/configs/ssd_mobilenet_v1_coco.config ./models/research/
	sudo mv ./models/research/ssd_mobilenet_v1_coco.config ./models/mobilenet.config
	sudo nano ./models/research/mobilenet.config
else
	sudo wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz
	sudo tar -xvf faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz
	sudo mv faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017 ./models/research/object_detection/models/model
	sudo cp ./models/research/object_detection/samples/configs/faster_rcnn_inception_resnet_v2_atrous_coco.config ./models/research/
	sudo mv ./models/research/faster_rcnn_inception_resnet_v2_atrous_coco.config ./models/research/rcnn.config
	sudo nano ./models/research/rcnn.config
fi
