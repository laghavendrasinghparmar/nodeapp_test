
FROM node:latest

# Set the working directory to /app
WORKDIR /node_app

# Copy the current directory contents into the container at /app
COPY package.json ./



run npm install

COPY . .

EXPOSE 3000
# Run app.py when the container launches
CMD ["node", "index.js"]
