FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

COPY . .

EXPOSE 8080
ENV NODE_ENV=production
ENV DEMO_MODE=true
ENV ORG_NAME="Family Office Funds Dashboard"
ENV ORG_TAGLINE="Demo — Fabricated Data"

CMD ["node", "server.js"]
