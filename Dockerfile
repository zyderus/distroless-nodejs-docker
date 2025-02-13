# 🏗 Stage 1: Build the app
FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev

# Copy application code and build (if needed)
COPY . .

# 🚀 Stage 2: Run with Distroless
FROM gcr.io/distroless/nodejs22-debian12
WORKDIR /app
COPY --from=builder /app .

# Run as non-root user
# can only use builtin users in distroless images
USER 1000
EXPOSE 3000
CMD ["index.js"]