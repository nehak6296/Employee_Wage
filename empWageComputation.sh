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

function getWorkingHours() {
	case $1 in
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
		echo $numOfWorkinghrs
}

