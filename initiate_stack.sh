#!/bin/bash
filename="$1"
indx=0
cwd=`pwd`


#pushd $cwd >> /dev/null

while read -r line
do
    if [ ! -z "$line" ]; then
                name="$line"
                line_arr[$indx]=$name
                indx=$(($indx+1))
    fi  
done < "$filename"

arr_len=${#line_arr[@]}
echo ${line_arr[0]}


pushd ${line_arr[0]} >> /dev/null
for (( line_indx=1; line_indx<$arr_len; line_indx++ ))
do
        echo ${line_arr[$line_indx]}
        pushd ${line_arr[$line_indx]} >> /dev/null
done
pushd $cwd >> /dev/null
