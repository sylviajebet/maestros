# Build stage
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production stage
FROM nginxinc/nginx-unprivileged:alpine3.22-perl
# RUN addgroup nerdgroup && adduser -G nerdgroup -S nerd
# USER nerd
COPY --from=builder /app/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]