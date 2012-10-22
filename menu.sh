#!/bin/bash
command=${@: -1}
echo $command will be run



echo "MENU:"

for ((i=1;i<$#;i++))
do
	item=(${!i})
	last=`expr ${#item[@]} - 1`
	echo $i ${item[$last]}
done;

echo 
echo ""
read -s -n 1 number

echo $number

if [ $number = $'\E' ]; then
	echo "Exit";
	exit;
fi

choice=${!number}
echo $number $choice
set $choice

echo ""
xcommand="$command $1"
$xcommand
