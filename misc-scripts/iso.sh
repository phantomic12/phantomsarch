cd iso/$1
sh build.sh
cd ..
cd ..
mv iso/$1/out/*.iso $1.iso
