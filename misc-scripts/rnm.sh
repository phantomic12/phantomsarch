find . -name '*:*' -type f -exec bash -c '
  for file do
    base=${file##*/}
    mv "$file" "${file%/*}/${base//:/@}"
  done' bash {} +
	