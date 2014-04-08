require 'rubygems'
require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel
exchange = channel.default_exchange

queue = channel.queue('forward')

queue.subscribe do |delivery_info, metadata, payload|
  puts "Received #{ payload }"
end

sleep 30
connection.close
