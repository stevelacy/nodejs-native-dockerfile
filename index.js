const turbo = require('turbo-http')
const port = 8080

const server = turbo.createServer(function (req, res) {
  res.setHeader('Content-Length', '11')
  res.write(Buffer.from('hello world'))
})

server.listen(port)
console.log('starting on port', port)
