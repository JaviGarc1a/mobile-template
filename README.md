# React Native + Django REST Template

Starter template for mobile apps using a **React Native frontend** with **TypeScript** and a **Django REST Framework backend**, using **SQLite** as the development database.

---

## 🧱 Tech Stack

- **Frontend**: React Native + TypeScript + TailwindCSS
- **Backend**: Django REST Framework + SQLite
- **Linting/Formatting**:
  - Python: `ruff`
  - TS: `eslint`, `prettier`
- **Automation**: `pre-commit`

---

## 🚀 Getting Started

### Requirements

- Node.js >= 20
- Python >= 3.10

### 1. Setup pre-commit

```bash
bash setup.sh
```

### 2. Setup backend

```bash
cd custum-template-backend
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver

```

### 3. Setup frontend

```bash
cd custom-template-frontend
```
