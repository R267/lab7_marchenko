# Use Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose port and run
EXPOSE 3000
CMD ["node", "server.js"]