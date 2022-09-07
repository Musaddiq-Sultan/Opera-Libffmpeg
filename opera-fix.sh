echo "Input 1 to make changes"
echo -n "Input 2 to reverse changes: "
read key
if [ $key = 1 ]
then
sudo mv /lib/x86_64-linux-gnu/opera/libffmpeg.so /lib/x86_64-linux-gnu/opera/libffmpeg.so.original
sudo cp libffmpeg.so /lib/x86_64-linux-gnu/opera/
echo "Changes have been made!"
elif [ $key = 2 ]
then
sudo rm /lib/x86_64-linux-gnu/opera/libffmpeg.so
sudo mv /lib/x86_64-linux-gnu/opera/libffmpeg.so.original /lib/x86_64-linux-gnu/opera/libffmpeg.so
echo "Changes have been reversed!"
elif [ $key != 1 ] || [ $key != 2 ]
then
echo "Wrong Input"
fi
