#!/bin/bash

# Check REPO_NAME.db and delete any other version of packages not in there

# not my script, heres the original: https://github.com/xzsk2/PKGBUILDS/blob/main/package-cleanup.sh
REPO_NAME=$1 
DND="DO_NOT_DELETE"

if [ ! -d $DND ]; then
	mkdir $DND
fi

mv $(
	tar tf $REPO_NAME.db |
		awk -F/ 'NF==2{print $1}' |
		sort -u |
		while read line; do
			ls $line*
		done
) -t $DND

mv $REPO_NAME.db $REPO_NAME.db.tar.gz $REPO_NAME.files $REPO_NAME.files.tar.gz -t $DND
ls | grep -v $DND | xargs rm -rfv
mv $DND/* .
rmdir $DND