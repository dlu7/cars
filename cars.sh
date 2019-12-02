#! /bin/bash
# cars.sh
# Debbie Lu

OPTION=0

while [ "$OPTION" -ne 3 ]
do
	echo "Type 1 to add a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to exit the program"
	echo -n "Enter a number: "; read OPTION
	case "$OPTION" in
		1)
			echo "Enter the year: "
			read YEAR
			echo "Enter the make: "
			read MAKE
			echo "Enter the model: "
			read MODEL
			echo "${YEAR}:${MAKE}:${MODEL}" >> My_old_cars
			;;
		2)
			sort My_old_cars
			;;
		3)
			echo "Goodbye"
			;;
	esac
done
