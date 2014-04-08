require 'singleton'

class SimpleLogger
  include Singleton
end

p SimpleLogger.instance.object_id
p SimpleLogger.instance.object_id
