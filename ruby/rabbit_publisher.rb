require 'rubygems'
require 'bunny'
require 'json'

connection = Bunny.new
connection.start

channel = connection.create_channel
exchange = channel.default_exchange

queue = channel.queue('forward')

10.times do |n|
  exchange.publish(n.to_s, routing_key: queue.name)
  exchange.publish({ name: :test, date: '20-17-29 18:00:01' }.to_json, routing_key: queue.name)
  sleep 2
end

connection.close
