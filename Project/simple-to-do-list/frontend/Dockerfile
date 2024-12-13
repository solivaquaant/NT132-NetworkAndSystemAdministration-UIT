# Sử dụng image Node.js cho frontend
FROM node:18-alpine

# Thiết lập thư mục làm việc
WORKDIR /frontend

# Sao chép file package.json và package-lock.json để cài đặt dependencies
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn của frontend vào container
COPY . .

# Build ứng dụng cho môi trường production
RUN npm run build

# Sử dụng serve để chạy ứng dụng đã build ở chế độ production
RUN npm install -g serve

# Expose port
EXPOSE 3000

# Khởi động ứng dụng bằng lệnh serve
CMD ["serve", "-s", "build"]
