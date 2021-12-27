#!/bin/bash
[ ! -d "~/1hw/bin" ] && mkdir -p ~/1hw/bin  
[ ! -d "~/1hw/data" ] && mkdir -p ~/1hw/data
if [ ! -f "~/1hw/data/$(basename $0)" ]; then
   cp "$0" ~/1hw/bin/
   chmod a+x $(basename $0)
fi

let files=($1+4)/5
echo "files need to create by user: $files"
if [ -f "state.sh" ]
then 
   source state.sh 
   echo "files=$files+$should-$state"
   let "files=$files+$should-$state" 
else
   echo "should=$files state=0" > state.sh 
fi

echo "Files need to create after state check: $files"
for ((i=1; i<=$files; ++i))
do
   echo "iteration $i"
   while :
   do
      filename="data$RANDOM.txt"
      if [ ! -f "$filename" ]; then break; fi
   done
   echo "Filename: $filename"
   let numberToGenerate=5
   let lastNumbersStuk=$1%5
   if [ $i = $files ] && [ $lastNumbersStuk -ne 0 ]; then
      numberToGenerate=$lastNumbersStuk
   fi
   echo "Numbers to generate in current file: $numberToGenerate"
   for ((j=1; j<=$numberToGenerate; ++j))
   do
   	echo "$RANDOM" 
   done > ~/1hw/data/$filename
   echo "should=$files state=$i" > state.sh
done

rm state.sh