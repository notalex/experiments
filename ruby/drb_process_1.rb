require 'drb/drb'

URI = "druby://localhost:8787"

class TimeServer
  def get_current_time
    Time.now
  end
end

FRONT_OBJECT = TimeServer.new

DRb.start_service(URI, FRONT_OBJECT)
DRb.thread.join
