#!/bin/bash

is_Present=1;
randomCheck=$((RANDOM % 2))

	if [ $is_Present = 1 ];
        then
                echo "Employee is present.."
        else
                echo "Employee is abscent.."
        fi
