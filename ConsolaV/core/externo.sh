if [ $1 = 0 ]; then
		
	cd libs/Blackeye/
	bash blackeye.sh
elif [ $1 = 1 ]; then
	cd libs/Spamer/
	python2 spoofer.py
elif [ $1 = 2 ]; then
	cd libs/PasTerm/
	php pasterm.php
else
	echo "Este archivo es ncesario"
fi