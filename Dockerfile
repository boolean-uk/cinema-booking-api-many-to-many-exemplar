FROM node:18

WORKDIR /app

COPY . .

RUN npm install
RUN npx prisma generate

EXPOSE 4000
CMD ["node", "src/index.js"]