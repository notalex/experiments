def say(text)
  5.times do
    sleep 0.1
    puts text
  end
end

spawn do
  say("world")
end

say("hello")
