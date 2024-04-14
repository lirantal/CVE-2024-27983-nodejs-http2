const http2 = require("http2");
const fs = require("fs");

const server = http2.createServer();

server.on("error", (err) => console.error(err));

server.on("stream", (stream, headers) => {
  // Respond to the request with a simple hello world message
  stream.respond({
    "content-type": "text/plain; charset=utf-8",
    ":status": 200,
  });
  stream.end("Hello World with HTTP/2!");
  console.log("Request handled");
});

server.listen(7777, () => {
  console.log("Server is running on http://localhost:7777");
});
