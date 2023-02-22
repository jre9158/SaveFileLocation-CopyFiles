# SaveFileLocation-CopyFiles
 Script to move a application library based on saved paths from another source.

This script has 2 modes.
1. Saving File locations in a directory as json format.\n\n'
2. Moving all files in a directory to the saved location from step 1.\n\n')

The original use-case was to organize a projects large library of files into better organized sections and save that structure,
then once we were ready to go live, it would auto-organize the files to the saved locations.

The reason this was needed was because the project needed to be set up with the new structure format,
by the time that was done, all the files were out of date. This let us design the structure, then move the live library when ready.

In the "save mode" This will save the full path of all files in all sub-directories of the parent directory you give it.
In a dictionary format, the key will be the filename (WITH-OUT a file extension, .py for example), the value will be the path, without the filename.
This will be saved using the pickle package to the directory of the executable.

In the "copy mode" This will load in the dictionary from the pickle file, then search all files in all sub-directories of the parent directory you give it.
It checks for a path found in the dictionary for each file, if its found it will copy the file, creating the directory, preserving as much data as possible from the original file properties(like time stamps).
It will log any errors, and copy any files it does not have a path saved for into a UNKNOWN folder.