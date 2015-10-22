#!/bin/bash

##USAGE: sh ./permissions <optional directory>
###ex: sh ./permissions || sh ./permissions rootDirectory || sh ./permissions .




# Script to set up the correct permissions needed for the Apache server
# Author: Jared Koontz
# All files will be set to 644 -rw-r--r--
# Directories will be set to 711 drwx--x--x  


#this function iterates through contents of the current directory
#if the $current file is directory, make recursive call on contents of the directory
#else, it is a file, so simply change the permissions.
permissions()
{
    for current in *; do
        if [[ -d "${current}" && ! -L "${current}" ]] ; then
            echo "$current is a directory"
            chmod 711 $current
            #go into directory and make recursive call on directories contents
            pushd $current > /dev/null
            permissions
            #pop from directory
            popd > /dev/null
        else
            echo "$current is a file"
            chmod 644 $current
        fi            
    done
}

#Execution starts here
# Check arguments
if [ "$#" -lt 2 ] ; then
    echo "correct arguments"
    if [ "$#" -eq 1 ]; then
        #set root folder to first argument
        root=$1
        #check directory
        if [ ! -d "$root" ] ; then
        	echo "Nonexistent Directory: $root"
        	exit -1
        fi
        
        pushd $root > /dev/null
        echo "Changing permissions for $root."
        echo
        permissions
        popd > /dev/null
        chmod 711 $root
    else
        permissions
    fi
else
    echo
    echo "usage: $0 <rootFolder>"
	echo "or: $0 "
	echo 
fi
	

