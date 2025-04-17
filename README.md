# 🚀 Vue 3 + Vite + Docker Kit

This is a minimal boilerplate for developing Vue 3 applications using Vite — fully containerized with Docker.  
You don't need Node.js or npm installed locally — everything runs inside Docker.

---

## 📦 Features

- ⚙️ Vue 3 with Composition API
- ⚡️ Vite for lightning-fast dev server
- 🐳 Dockerized setup — zero local dependencies
- 🔁 Live reload via mounted volumes
- 🔐 Environment variables via `.env`
- 🧱 Simple, clean structure ready for scaling

---

## 🚀 Quick Start

### 1. Clone this repository

```bash
git clone https://github.com/oleh7gh/vue3-vite-docker-kit.git
cd vue3-vite-docker-kit
```

### 2. Start the development server
```bash
docker-compose up --build
```

### 3. First run will:
Automatically scaffold a new Vue 3 + Vite project
Install dependencies inside the container
Start the development server
App will be available at http://localhost:5173

---

🛠 Tech Stack
```
Vue 3
Vite
Docker
Node 20
```
🧪 Environment Variables
```
Create a `.env` file at the root (based on `.env.example`):
```

🧪 Development Notes
Project files are created only if package.json is missing
```
Volumes:
.:/app:cached — maps your local code into the container
/app/node_modules — isolates node_modules from host
```

📁 Structure (after init)
```
├── src/
├── public/
├── package.json
├── vite.config.js
├── Dockerfile
├── docker-compose.yml
└── entrypoint.sh
```

📜 License
MIT © Oleh Artiukh
