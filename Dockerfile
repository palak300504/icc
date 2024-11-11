FROM node:16 AS build

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the source code
COPY . ./

# Step 2: Run the Vite app in development mode
CMD ["npm", "run", "dev", "--", "--host"]

# Expose the port where the Vite development server will run
EXPOSE 80