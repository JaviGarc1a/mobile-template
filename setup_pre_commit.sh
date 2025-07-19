#!/bin/bash

set -e

echo "Initializing repository"

echo "Activating venv"

python3 -m venv custom-template-backend/.venv
source custom-template-backend/.venv/bin/activate

pip install -r custom-template-backend/requirements.dev.txt
pip install -r custom-template-backend/requirements.txt
pre-commit install

echo "Pre-commit hooks initialize"

cd custom-template-frontend/
npm install

cd ..
