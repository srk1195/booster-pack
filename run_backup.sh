#!/bin/bash

# 0 12 * * 3 [ -f /home/hiccup/scripts/run_backup.sh ] && echo "Backup script is running" || bash /home/hiccup/scripts/run_backup.sh

array=("${HOME}/.bash_aliases" "${HOME}/.bashrc" "${HOME}/.ssh/config" "${HOME}/.ssh/set_git_profile.sh")

read -p "Do you want to copy the files to the current directory? (y/n): " answer

function copy_the_files_to_directory() {
  for i in "${array[@]}"
  do
    # check if file exists
    if [ -z "$i" ]; then
        echo "File $i is empty"
    else

      # Check if the file is set_get_profile.sh and copy it to ssh_config directory
      if [ "$i" == "${HOME}/.ssh/set_git_profile.sh" ]; then
        echo "Copying the file $i to ssh_config directory"
        cp $i ~/.ssh/set_get_profile.sh
        chmod +x ~/.ssh/set_get_profile.sh
        break
      fi
      
      # Check if it is ssh config file
      if [ "$i" == "${HOME}/.ssh/config" ]; then
        echo "Copying the ssh config file"
        cp $i ssh_config/config
      else
        echo "Copying the file $i"
        cp $i .
      fi

    fi

done
}


if [ $answer == "y" ]; then
    copy_the_files_to_directory
else
    echo "Exiting the script"
fi



