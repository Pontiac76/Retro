@echo off
echo Formatting disk in whatever mode it's in; Show Status; Extend Format (40 Sectors)
cbmforng -s -x 8 disk,id
echo Hard reset the drive
cbmctrl command 8 "UJ"
echo Select side 0
cbmctrl command 8 "U0>H0"
echo Select 1571 mode
cbmctrl command 8 "U0>M1"
echo Format just sector 18 (-b and -e are undocumented?)"
cbmforng -b 18 -e 18 -s 8 unformat,uf
echo Initialize the drive
cbmctrl command 8 I
echo Do the format
cbmctrl command 8 "N:LONG1571REFORMAT,LR"
echo Waiting for status
cbmctrl status 8
echo Showing initial directory
cbmctrl dir 8
echo Copy a D71 for test
rem d64copy -2 128-robots.d71 8
echo Another status
cbmctrl status 8
echo Showing new directory
cbmctrl dir 8
