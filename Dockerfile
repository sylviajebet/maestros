# Build stage
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Install necessary utilities
RUN apk add --no-cache shadow
# Create a non-root user (e.g., 'myuser') and group
RUN groupadd -r mygroup && useradd -r -g mygroup -m myuser
# Set the user to 'myuser'
USER myuser

# Production stage
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
