#!/bin/bash
status=$(git status)
result=$(echo $status | grep "Changes to be committed")

if [ "$result" == "" ]
then
    echo "Please run git add first!"
    exit 0
fi

# type
echo "请选择commit类别(Type):"
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
echo -n "请输入commit影响范围（Scope）:"
read scope

# subject
echo -n "请输入commit目的的简短描述（Subject）:"
# 需要判断是否小于50个字符
read subject

# body
echo -n "是否要输入body描述[Y/N]?"
read is_body
while true 
do
    case $is_body in
      [Yy]* ) 
        echo "请输入body描述"
        read body
        break
        ;;
      [Nn]* )
        body=""
        break
        ;;
      * )
        echo "Y or N"
        read is_body
    esac
done


# footer
echo -n "是否要输入footer描述[Y/N]?"
read is_footer
while true
  do
    case $is_footer in
      [Yy]*) 
        echo -n "请输入footer描述:"
        read footer
        break
        ;;
      [Nn]*) 
        footer=""
        break
        ;;
      *)
        echo "Y or N"
        read is_footer
    esac
done

message="$type($scope): $subject
\n
$body
\n
$footer
"

git commit -m "$message"


