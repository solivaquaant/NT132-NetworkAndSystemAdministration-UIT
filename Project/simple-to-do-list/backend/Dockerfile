# Dockerfile for Express (Server)
FROM node:18-alpine

# Thiết lập thư mục làm việc
WORKDIR /backend

# Sao chép file package.json và package-lock.json để cài đặt dependencies
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Expose port
EXPOSE 3001

# Khởi động server
CMD ["node", "app.js"]
