#!/bin/bash 


 display_usage() { 
	echo "
Usage:
    $(basename "$0") <prefix> [--help or -h]

Description:
    Describes CDP environment.

Arguments:
    prefix:    prefix of your assets
    --help or -h:   displays this help"

}

# check whether user had supplied -h or --help . If yes display usage 
if [[ ( $1 == "--help") ||  $1 == "-h" ]] 
then 
    display_usage
    exit 0
fi 


# Check the numbers of arguments
if [  $# -lt 1 ] 
then 
    echo "Not enough arguments!"
    display_usage
    exit 1
fi 

if [  $# -gt 1 ] 
then 
    echo "Too many arguments!"
    display_usage
    exit 1
fi 


cdp datahub describe-cluster --cluster-name $1-de-cluster