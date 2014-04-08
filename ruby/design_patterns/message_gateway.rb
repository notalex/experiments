require 'uri'

class Message
  attr_accessor :from, :to, :body

  def initialize(from, to, body)
    from, to, body = from, to, body
  end
end
