perHourSalary=20;
workingHour=0;
totalSalary=0;

for ((day=1; day<=20 ;day++))
do
	isPresent=2;
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
		workingHour=8;
		;;
	esac
	salary=$(($perHourSalary * $workingHour));
	totalSalary=$(($totalSalary + $salary));
done

echo "Employee has earned $totalSalary $ in a month";
