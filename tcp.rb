require 'socket'

serv = TCPServer.new 1234

loop do
  client = serv.accept

  client.puts 'Type any message and it will be sent back to you.'
  client.puts(client.gets.strip)
  client.close
end
