require 'webrick'

server = WEBrick::HTTPServer.new :Port => 1234
server.mount_proc '/' do |req, res|
  res.body = 'Hello, world!'
end
trap('INT') { server.stop }
server.start
