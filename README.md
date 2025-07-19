# Custom Fullstack Mobile Template

A monorepo template for building fullstack mobile applications using:

- 🧠 **Django REST Framework** (backend)
- 📱 **React Native + Expo** (frontend)
- ✅ **Pre-commit** hooks (formatting, linting, automation)

Ideal for kickstarting a clean architecture with type safety, static analysis, and unified tooling.

---

## 📁 Project structure

```

.
├── custom-template-backend/ # DRF backend
│ ├── custom_template/ # Django project
│ ├── requirements.txt
│ ├── requirements.dev.txt
│ └── pyproject.toml # Ruff config and Python metadata
├── custom-template-frontend/ # React Native frontend (Expo)
│ ├── src/
│ ├── package.json
│ ├── tailwind.config.cjs
│ └── tsconfig.json
├── setup_pre_commit.sh # Bootstrap project and install pre-commit
├── rename.sh # Template renaming helper
├── README.md
└── LICENSE

```

---

## 🚀 Getting started

### 1. Use the template

To rename the default project folders and identifiers:

```bash

./rename.sh old-name new-name

```

> [!IMPORTANT]
> ⚠️ The backend expects snake_case (custom_template) for internal modules, while the outer folder uses kebab-case (custom-template-backend).

2. Setup environment & tooling

```bash

./setup_pre_commit.sh

```

This will:

- Create a Python virtualenv inside custom-template-backend/.venv
- Install backend dependencies (requirements.txt)
- Install frontend dependencies via npm install
- Install and configure pre-commit

## 🧰 Tooling & conventions

### 🐍 Backend

- Django + DRF
- Linting: ruff
- Formatted via pre-commit hook
- Python version: 3.10+

### 📱 Frontend

- React Native + Expo
- TypeScript
- Tailwind CSS (via NativeWind)
- Linting: eslint, prettier, pretty-quick
- Pre-commit hooks ensure consistency and formatting

## 🧪 Development

Start backend:

```bash

cd custom-template-backend
. .venv/bin/activate
python manage.py runserver

```

Start frontend:

```bash

cd custom-template-frontend
npm run start

```

## ✅ Pre-commit hooks

This project uses pre-commit to ensure code quality.

To manually run all hooks:

```bash

pre-commit run --all-files

```

Hooks included:

- ruff for Python linting/formatting
- prettier, eslint, pretty-quick for frontend

## 📝 Notes

- This project is designed to be used as a template and renamed via rename.sh.
- You can safely remove .pyc files and regenerate them.
- Works best in Unix environments (bash required for scripts).
