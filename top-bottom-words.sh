!# /bin/bash
NUMBER=$1
FILE=$2
echo "The top "$NUMBER" words of "$FILE" is:"
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' |
sort | uniq -c |sort -nr | tail -n $NUMBER

echo

echo "The bottom " $NUMBER" words of "$FILE" is:"

cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' |
 sort | uniq -c |sort -nr | tail -n $NUMBER
