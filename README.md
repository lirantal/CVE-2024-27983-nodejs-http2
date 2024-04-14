This repository builds up a vulnerable HTTP2 Node.js server (`server-nossl.js`) based on CVE-2024-27983 which exploits a continuation flood vulnerability in HTTP2 servers.

Notes:

- `server.js` is found not vulnerable due to the use of SSL certificates.
- `server-nossl.js` is vulnerable to the continuation flood attack.
- `client.js` is a small client script to test the HTTP2 server.
- `exploits/` contains the exploit code for the vulnerability based on the [HackerOne report](https://hackerone.com/reports/2319584).
