if [ $1 = 0 ]; then
		
	cd libs/Blackeye/
	bash blackeye.sh
elif [ $1 = 1 ]; then
	cd libs/Spamer/
	python2 spoofer.py
else
	echo "Este documento es ncesario"
fi