# Dockerfile
FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Generate Prisma client
RUN npx prisma generate

RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]
