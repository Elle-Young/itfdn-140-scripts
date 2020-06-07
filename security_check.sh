#!/bin/bash
# Author: Elle Young
# Title: security_check.sh
# Date: 06/07/2020
# Purpose: Generate a report of all files and folders with allow Read, Write and Execute for Other.
# Update: Add stretch task for log variable.

# Define a variable for date
now=`date`

# Create a header at the top of the security log

echo "*******************************" >> security_check.log

# add hostname to the security log
echo "*** Security report for: $HOSTNAME " >> security_check.log

# add date to the security log
echo "*** Report Date: $now " >> security_check.log

# Add find command here and redirect the output to security_check.log

# add two blank lines
echo >> security_check.log
echo >> security_check.log
# close log for this run
echo "**** End security report ******" >> security_check.log
echo "*******************************" >> security_check.log
