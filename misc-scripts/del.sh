CUT=$1
L=${#CUT}
N=$(($L-1))
O=$(echo $CUT | cut -c 6-$N)
echo $O
