cd ..
cd repo && rm -rf *
cd .. && cd misc-scripts && sh sources.sh
ls *.git |xargs -n1 tar -xzf
rm -rf *.git
find . -name "*.gitignore" -type f -delete
