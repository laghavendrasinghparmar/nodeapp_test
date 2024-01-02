
FROM Node:Latest

# Set the working directory to /app
WORKDIR /node_app

# Copy the current directory contents into the container at /app
COPY package.json ./

# Install any needed packages specified in requirements.txt
RUN pip install

COPY . .

EXPOSE 3000
# Run app.py when the container launches
CMD ["node", "index.js"]
