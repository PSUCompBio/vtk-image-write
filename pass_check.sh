#!/bin/bash

# Add file and the target file size below
repo=vtk-image-write
file=sphere.png
target_file_size=9096

# You shoud not have to modify below
#
myfilesize=$(wc -c <"$file")
echo Acutal File Size = "$myfilesize"
echo Target File Size = "$target_file_size"

if [ $myfilesize -ge $target_file_size ];then
        echo Passed!
        echo "Passed" >> ~/$repo.PASSED
        echo "Acutal File Size = "$myfilesize" " >> ~/$repo.PASSED
        echo "Target File Size = "$target_file_size" " >> ~/$repo.PASSED
else
        echo Failed!
        echo "Failed!" >> ~/$repo.FAILED
        echo "Acutal File Size = "$myfilesize" " >> ~/$repo.FAILED
        echo "Target File Size = "$target_file_size" " >> ~/$repo.FAILED
fi
