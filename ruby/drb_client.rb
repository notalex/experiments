require 'drb/drb'

SERVER_URI = 'druby://localhost:8787'

DRb.start_service

time_server = DRbObject.new_with_uri(SERVER_URI)
p time_server.get_current_time
