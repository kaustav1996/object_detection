read -p "Enter number of Classes: " x
s=""
for i in `seq 1 $x`;
        do
		
                echo "item {" >> object_detection.pbtxt
		echo "  id: $i" >> object_detection.pbtxt
		read -p "$i )>" nm
		echo "name: '$nm'" >> object_detection.pbtxt
		echo "}" >> object_detection.pbtxt
		echo " " >> object_detection.pbtxt
		if [[ "$i" == "1" ]];then
			s="'$nm'"
		else
			s="'$nm',$s"
		fi
done
sed -i "s/replace_this/$s/" generate_tfrecord.py
