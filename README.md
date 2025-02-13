## Distroless Nodejs Docker

A minimal and secure Node.js application built with distroless docker image using multi-stage build.

### Why bother?

- A standard Node.js Docker container built from typical base images can weigh over **1GB**.
- By using Distroless images and multi-stage builds, the container reduces to just over **200MB** — making it lightweight, secure, and efficient.

### Key features:

- 🐳 Dockerized Node.js App: Containerized for portability and consistency.
- 🛡️ Distroless Base Image: Uses Google's Distroless image for minimal runtime environment, enhancing security.
- 🔧 Multi-Stage Builds: Reduces final image size by separating build and runtime environment.
- 📦 Minimal Dependencies: Only includes what’s necessary to run the app.
- 🚀 Production-Ready: Optimized for deployment in production environments.

### Getting started:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/distroless-nodejs-docker.git
   ```

2. Build the Docker image:

   ```bash
   docker build -t distroless-nodejs-app .
   ```

3. Run the container:

   ```bash
   docker run -p 3000:3000 distroless-nodejs-app
   ```

### Why distroless?

Distroless images contain only your application and its runtime dependencies, excluding unnecessary packages like shells, package managers, or other tools. This reduces the attack surface and improves security.

### License:

This project is licensed under the MIT License.
