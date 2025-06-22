# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the files
COPY . .

# Expose port (same as in your server.js)
EXPOSE 5050

# Run the application
CMD ["node", "server.js"]
