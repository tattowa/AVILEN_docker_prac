require 'webrick'


server = WEBrick::HTTPServer.new(
    DocumentRoot: './',
    BindAdres: '0.0.0.0',
    Porrt: 8000
)

sever.mount_proc('/') do |req, res|
    res.nody = 'hello'
end

server.start