#!/bin/bash

# Usage: ./rename-template.sh old-name new-name
set -e

if [ $# -ne 2 ]; then
	echo "Usage: $0 old-name new-name"
	exit 1
fi

OLD_NAME="$1"
NEW_NAME="$2"
BASE_DIR=$(pwd)

echo "📁 Replacing occurrences in files..."
grep -rl "$OLD_NAME" . \
	--exclude-dir={.git,node_modules,__pycache__,.venv,env,venv} \
	--exclude=rename-template.sh |
	xargs sed -i "s/$OLD_NAME/$NEW_NAME/g"

echo "📂 Renaming directories..."
find . -depth -type d -name "*$OLD_NAME*" | while read -r dir; do
	newdir=$(echo "$dir" | sed "s/$OLD_NAME/$NEW_NAME/g")
	mv "$dir" "$newdir"
done

echo "📄 Renaming files..."
find . -type f -name "*$OLD_NAME*" | while read -r file; do
	newfile=$(echo "$file" | sed "s/$OLD_NAME/$NEW_NAME/g")
	mv "$file" "$newfile"
done

echo "✅ Project renamed from '$OLD_NAME' to '$NEW_NAME'."
