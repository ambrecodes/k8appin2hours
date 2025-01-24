// Import the Express module, which is a web framework for Node.js
const express = require('express');

// Create an instance of an Express application, stored in the 'app' variable
const app = express();

// Define a route that handles GET requests to the root URL ('/')
// The callback function receives two parameters: 'req' (request) and 'res' (response)
app.get('/', (req, res) => {
  // When a GET request is made to '/', the server responds with the message 'Hello, Kubernetes!'
  res.send('Hello, Kubernetes!');
});

// Start the server on port 3000
// The callback function is called when the server successfully starts
app.listen(3000, () => {
  // Log a message to the console, indicating that the server is running and accessible at http://localhost:3000
  console.log('Server running on http://localhost:3000');
});
