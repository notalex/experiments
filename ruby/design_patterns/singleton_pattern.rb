class SimpleLogger
  attr_accessor :level

  ERROR = 1
  WARNING = 2
  INFO = 3

  @@instance = SimpleLogger.new

  private_class_method :new

  def self.instance
    @@instance
  end

  def error(msg)
    puts(msg)
    flush
  end

  def warning(msg)
    puts(msg) if level >= WARNING
    flush
  end

  def info(msg)
    puts(msg) if level >= INFO
    flush
  end
end

logger = SimpleLogger.instance
logger.level = SimpleLogger::INFO

logger.info('Doing the first thing')
logger.info('Doing the second thing')
