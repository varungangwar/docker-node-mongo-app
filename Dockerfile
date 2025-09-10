# Step 1: Use official Node.js image
FROM node:18

# Step 2: Set working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Step 4: Copy app code
COPY app.js ./

# Step 5: Expose port
EXPOSE 3000

CMD ["npm", "start"]

