require 'socket'
s = UDPSocket.new
s.bind('127.0.0.1', ARGV.shift.to_i)

loop do
  puts s.recvfrom(1024)
end
