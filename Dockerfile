# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the application code
COPY . .

# Expose port (Railway will use process.env.PORT)
EXPOSE 3000

# Start the server
CMD ["node", "src/server.js"]
