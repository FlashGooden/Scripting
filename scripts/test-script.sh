#!/bin/zsh

echo 'hello'
echo $1
echo $0
VARIABLE="name"

echo VARIABLE
echo $VARIABLE 


echo "I think my ${VARIABLE} is one of a kind when ${VARIABLE}ing things"
if  [ "$VARIABLE" = "name" ]
then
  echo "these two equal"
fi

for ANIMAL in frog giraffe dog 
do 
	echo "this is the animal $ANIMAL"
done

FILE_LIST=$(ls *) 
echo $FILE_LIST

DATE=$(date +%F)
echo $DATE

read -p "What is the user name? " NAME
echo "$NAME"

test()
{
  echo -n "Here be dragons. Continue?"
  read REPLY

  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "You asked for it..."
  fi
}

test
[ -e ./test-script.sh ]
