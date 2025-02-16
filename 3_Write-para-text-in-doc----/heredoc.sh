#!/bin/bash
#Purpose: Here Document Example
#Version:1.0
#Created Date: SAT JAN 17 06:50:23 IST 2025
#Author: Siddhartha
# START #
ftp -n <<- EOF 2> /dev/null
        open ftp.server.com
        user ftp ftp
        ascii
        cd uploadfolder
        mput file1 file1 file2
        bye
EOF

