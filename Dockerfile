# Use lightweight node image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy files
COPY package.json .
COPY app.js .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start application
CMD ["npm", "start"]
