NUMBER=$1
FILE=$2
echo "The top "$NUMBER" words of "$FILE" is:"
cat $FILE | head -n $NUMBER
echo
cho "The bottom " $NUMBER" words of "$FILE" is:"
cat $FILE | grep -oE '\w+' |uniq -c |sort -nr | tail $FILE
