APPLY_ORDER=apply_order.txt

while read line
do
    echo $line
    cat $line
done < "$APPLY_ORDER"
