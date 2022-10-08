#!/usr/bin/bash
echo -e "1. Make Changes\n2. Reverse Changes"
read -p "Input: " input


if [[ input -eq 1 ]]
then

echo "Backing Up Original Files"
sudo mv /lib/x86_64-linux-gnu/opera/libffmpeg.so ./libffmpeg.so.original
echo "Copying Files"
sudo cp libffmpeg.so /lib/x86_64-linux-gnu/opera/
read -p "Press Enter to finish"

elif [[ input -eq 2 ]]
then

echo "Removing Files"
sudo rm /lib/x86_64-linux-gnu/opera/libffmpeg.so
echo "Restoring Original Files"
sudo mv libffmpeg.so.original /lib/x86_64-linux-gnu/opera/libffmpeg.so
read -p "Press Enter to finish"

else

echo "Wrong Input"
read -p "Press Enter to exit"

fi