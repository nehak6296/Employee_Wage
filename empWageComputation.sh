#!/bin/bash 

#CONSTANTS

isPartTime=1;
isFullTime=2;
max_hrs_in_month=100;
empRatePerHr=20;
numWorkingDays=20;

#VARIABLES

totalEmpHr=0;
totalWorkingDays=0;
workingHours=0;
empDailyWage=0;

function getWorkingHours() {
	local empCheck=$1
	case $empCheck in
		$isFullTime)
			numOfWorkingHrs=8
				;;
		$isPartTime)
			numOfWorkingHrs=4
				;;
			*)
			numOfWorkingHrs=0
				;;
		esac

		echo $numOfWorkingHrs

}

function getWage() {
	local workingHour=$1
	echo $(($workingHours*$empRatePerHr))
}

while [[ $totalEmpHr -lt $max_hrs_in_month && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        workingHours="$( getWorkingHours $((RANDOM%3)) )";
        totalEmpHr=$(($totalEmpHr + $workingHours))
	empDailyWage[$totalWorkingDays]="$( getWage $workingHour )"
	
done
	echo ${empDailyWage[@]}
	totalSalary=$(( totalEmpHr*empRatePerHr ))
	empDailyWage[$totalWorkingDays]="$totalSalary"
	echo "Added totalSalary " 
	echo ${empDailyWage[@]}
