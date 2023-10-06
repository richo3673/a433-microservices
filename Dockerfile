#menggunakan base image Node.js versi 14
FROM node:14-alpine
#menentukan working directory yaitu /app
WORKDIR /app
#menyalin source code ke dalam working directory
COPY . .
#menentukan environment variable dalam production mode
ENV NODE_ENV=production DB_HOST=item-db
#menginstall dependencies dan menjalankan build
RUN npm install --production --unsafe-perm && npm run build
#ekspos port 8080 untuk digunakan aplikasi
EXPOSE 8080
#menjalankan perintah npm start ketika container diluncurkan
CMD ["npm", "start"]

