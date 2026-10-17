# 1. Start from an official Node.js image (small "alpine" version)
FROM node:20-alpine

# 2. Set the working folder inside the container
WORKDIR /app

# 3. Copy only the dependency files first
COPY package*.json ./

# 4. Install production dependencies (skips nodemon)
RUN npm install

# 5. Copy the rest of your app code
COPY . .

# 6. Document the port the app listens on
EXPOSE 8080

# 7. Command that runs when the container starts
CMD ["npm", "start"]
