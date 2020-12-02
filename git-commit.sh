#!/bin/bash
status=$(git status)
result=$(echo $status | grep "Changes to be committed")

if [ "$result" == "" ]
then
  echo -e "\033[31m No changes added to commit! \033[0m"
  exit 0
fi

# type
echo "Select the type of change that you're committing:"
item[0]='feat'
item[1]='fix'
item[2]='format' 
item[3]='comment' 
item[4]='test'
select type in ${item[*]}
do
  if [ $type ]
  then 
    echo "Choose type is: $type"
    break
  fi
done

# scope
echo -n "What is the scope of this change? (e.g. component or file name): (press enter to skip): "
read scope

# subject
echo "Write a short, imperative tense description of the change (max 50 chars): "
# 需要判断是否小于50个字符
while true
do
  read subject
  if [ ${#subject} -gt 50 ]
  then
    echo -n 'The description exceeds 50 characters, please re-enter: '
  else
    break
  fi
done

# body
echo "Provide a longer description of the change: (press enter to skip)"
read body
while true 
do
  if [ "$body" != "" ]
  then
    echo -n "Another line? ([Y/N] default yes): "
    read is_body
    case $is_body in
      [Nn]* )
        break
        ;;
      * )
        read new_body
        body="$body\n$new_body"
    esac
  else
    break
  fi
done

# footer
echo -n "Does this change affect any open issues? (press enter to skip): "
read footer


# message="$type($scope): $subject

# $body

# $footer
# "

message=$type

if [ "$scope" != "" ]
then
  message="$type($scope):$subject\n"
else
  message="$type:$subject\n"
fi

if [ "$body" != "" ]
then
  message="$message\n$body"
fi

if [ "$footer" != "" ]
then
  message="$message\n\n$footer"
fi

printf $message

git commit -m "$message"


