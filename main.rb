require 'webrick'


server = WEBrick::HTTPServer.new(
    DocumentRoot: './',
    BindAddres: '0.0.0.0',
    Porrt: 8000
)

server.mount_proc('/') do |req, res|
    res.nody = 'hello'
end

server.start