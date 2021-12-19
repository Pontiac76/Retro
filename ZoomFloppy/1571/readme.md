# Requirements:
Requires OpenCBM and ensuring your Windows (As tested) machine can see the ZoomFloppy controller.

## FullFormat.bat
### Description
This batch file will call on the cbmctrl application to completely wipe and format a DSDD disk in your 1571.  This defaults to drive 8, and with a quick edit on your local copy of the batch file, can write an image to the disk.

### Setup
#### CMD Environment
- You do not need to be an Admin
- Ensure that cbmforng, cbmctrl, and d64copy can be found at the command prompt
- *Optionally* have a d71 image in the same directory, or, provide a quoted full path and filename to the D71 image

### Execution
- Navigate to where FullFormat.bat lives on your system
- Run FullFormat.bat and sit back.

Sample Output: https://raw.githubusercontent.com/Pontiac76/Retro/main/ZoomFloppy/1571/FullFormat.Sample.txt
