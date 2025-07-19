#!/bin/bash

set -e

echo "Initializing repository"

echo "Activating venv"

if [ $# -ne 1 ]; then
	echo "Usage: $1 directory"
	exit 1
fi

python3 -m venv "$1-backend/.venv"
source "$1-backend/.venv/bin/activate"

pip install -r "$1-backend/requirements.dev.txt"
pip install -r "$1-backend/requirements.txt"
pre-commit install

echo "Pre-commit hooks initialize"

cd "$1-frontend/"
npm install

cd ..
