FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json .

RUN npm install

# Copy code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]