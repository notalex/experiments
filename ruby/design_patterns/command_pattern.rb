class SlickButton
  attr_accessor :command

  def initialize(command)
    @command = command
  end

  def on_button_push
    @command.execute
  end
end

# separating out something that changes from something that does not change
class SaveCommand
  def execute
    Setting.create message: 'settings saved'
  end
end

save_command = SaveCommand.new
button = SlickButton.new(save_command)
button.on_button_push
