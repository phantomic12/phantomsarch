cd ..
cd repo && rm -rf *
cd .. && cd misc-scripts && sh sources.sh
find . -name "*.gitignore" -type f -delete
find . -type d -name .git -exec delete
