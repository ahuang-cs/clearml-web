# ---- Base image (lightweight) ----
FROM node:lts-alpine

# Set working directory
WORKDIR /app

# Copy project files (Angular source, config, etc.)
COPY . .

RUN npm ci
RUN npm run build

EXPOSE 443

# Run Angular dev server with HTTPS
CMD ["npm", "run", "start"]
