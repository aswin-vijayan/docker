// Importing required modules
const http = require('http');

// Creating a server instance
const server = http.createServer((req, res) => {
    // Setting the response header
    res.writeHead(200, { 'Content-Type': 'text/plain' });

    // Sending the response
    res.end('Hello, World!\n');
});

// Listening on port 3000
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
