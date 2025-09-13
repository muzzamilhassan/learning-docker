# ---------- Build Stage ----------
FROM node:20-alpine3.22 as builder
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build
RUN npm prune --production   # keep only production deps


# ---------- Runner Stage ----------
FROM node:20-alpine3.22 as runner
WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./

RUN npm cache clean --force 
EXPOSE 3000
CMD ["node", "dist/index.js"]
