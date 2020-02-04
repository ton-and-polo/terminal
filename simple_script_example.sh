#!/bin/bash


# Arguments:
file_name=$0  # file name
argurments_counter=$#  # the amount of args

# Variables:
NAME="Iaroslav"
AGE=31

# Print messages:
echo "You running ${file_name}."
echo "The total amount of args is ${argurments_counter}."
echo "Hello, ${NAME}. You are ${AGE} years old."

# Conditional messages:
if [ $NAME = "Iaroslav" ] && [ ${AGE} -ls 18 ]; then
	echo "Hello ${NAME}\! You're younger than 18."
elif [ $AGE -gt 18 ]; then
	echo "Hello. You're older than 18."
else
	echo "Default message."
fi

# Required args (e.g. first_name last_name):
NUM_REQUIRED_ARGS=2
num_args=$#

if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then
	echo "Not enougth args. Call this script whit ${0} <first_name> <last_name>."
	# Stop exeqution of your porg:
	exit 1
fi

# Now you can safely set vars:
first_name=$1
last_name=$2

# For loop:
echo "The num of args is ${num_args}."
for argument in "$@"; do
	echo "${argument}"
done


# Function:
function greet_user() {
	num_args=$#
	if [ $num_args = 1 ]; then
		echo "Hello, ${1}\!"
	fi
}

# Call function (e.g. fucntion arg1 arg2):
greet_user "Jon"  # Hello, user!
greet_user "1" "2"  # Function doesn't print anything! NOTE: You pass args to function whithout commas!






