require 'logger'

log = Logger.new(STDOUT)
original_formatter = Logger::Formatter.new
log.formatter = proc {|severity, datetime, progname, msg|
   original_formatter.call(severity, datetime, progname, msg.gsub(' ', '_')) 
}
log.level = Logger::DEBUG

log.debug("Created logger")
log.info("Program started")
log.warn("Nothing to do!")

begin
  File.open('hooks.rb', 'r') do |line|
    unless line =~ /^(\w+) = (.*)$/
      log.error("Line in wrong format: #{line}")
    end
  end
rescue => err
  log.fatal("Caught exception; exiting")
  log.fatal(err)
end
