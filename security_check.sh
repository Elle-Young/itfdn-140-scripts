#!/bin/bash
# Author: Elle Young
# Title: security_check.sh
# Date: 06/07/2020
# Purpose: Generate a report of all files and folders with allow Read, Write and Execute for Other.
# Update: Add stretch task for log variable, add help/usage statement

# Define a variable for date
now=`date`

# Define a log variable 
sclog=security_check.log

# Create a header at the top of the security log

echo "*******************************" >> $sclog

# add hostname to the security log
echo "*** Security report for: $HOSTNAME " >> $sclog

# add date to the security log
echo "*** Report Date: $now " >> $sclog

# Add find command here and redirect the output to $sclog
find / -type d -perm 777 >> $sclog

# add two blank lines
echo >> $sclog
echo >> $sclog
# close log for this run
echo "**** End security report ******" >> $sclog
echo "*******************************" >> $sclog

#help/usage statement
#if [ "$1" = "-h"]
 #then
  #echo "This script will search your local system for any directories that grant Other full rights."
  #echo usage: $0 [-h]
  #exit 0
#fi

### variables
sclog=security_check.log

# Create a header at the top of the security log
echo "*******************************" >> ${sc-log}
