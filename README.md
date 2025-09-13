# 🚀 Learning Docker with Node.js

This project is a simple **Node.js + Express** app written in **TypeScript** and containerized with **Docker**.  
It demonstrates how to use **multi-stage builds**, **volumes**, and **Docker Compose** for local development and production.

---

## 📂 Project Structure

learning-docker/
│── src/ # Source code (TypeScript)
│── dist/ # Compiled JavaScript (after build)
│── Dockerfile # Multi-stage Dockerfile
│── docker-compose.yml (optional)
│── package.json
│── tsconfig.json



---

## ⚡ Scripts
```bash
# Compile TypeScript
npm run build

# Start app (after build)
npm start


1. Build the image
docker build -t my-node-app .

2. Run the container
docker run -d -p 3000:3000 --name=node_app my-node-app
➡️ App will be available at http://localhost:3000


📦 Run with Docker Compose (Optional)

If you have a database (like Postgres) and want to run everything together, use Docker Compose.

docker compose up

This will start:

app → Node.js app

db → Postgres database


🗄️ Volumes

This project demonstrates Docker volumes:

Keeps database data even if the container stops.

Example in docker-compose.yml:

volumes:
  dbdata:

🔥 Features

TypeScript support

Express server

Multi-stage Docker build (builder + runner)

Production-ready Docker image

Example Docker Compose for multi-service apps

📖 Learning Goals

Understand Dockerfiles (base, builder, runner).

Use Docker volumes for persistence.

Learn Docker networking.

Run multi-container apps with Docker Compose.

👨‍💻 Author

Muzzamil Hassan
Learning Docker, Node.js & DevOps 🚀