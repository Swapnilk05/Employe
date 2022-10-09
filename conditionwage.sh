perHourWage=20;
workingHour=100;
totalWage=0;

for ((day=1; day<=20 ;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		#echo "Employee is absent";
		workingHour=0;
		;;

		1)
		#echo "Employee is present";
		workingHour=8;
		;;

		2)
		#echo "Employee is working as part time";
		workingHour=4;
		;;
	esac
	wage=$(($perHourWage * $workingHour));
	totalWage=$(($totalWage + $wage));
done

echo "Employee has earned $totalWage $ in a month";
