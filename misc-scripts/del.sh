CUT=$1
L=${#CUT}
N=$(($L-1))
echo $CUT | cut -c 6-$N
