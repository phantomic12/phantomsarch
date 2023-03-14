PKG=$1
cd repo/$1
echo $(ls *.zst) >> $1.txt
cd ..
cd ..
mv repo/$1/$1.txt logs
