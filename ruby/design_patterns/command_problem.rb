class SlickButton
  def on_button_push
  end
end

class NewDocumentButton < SlickButton
  def on_button_push
    Document.create message: 'new document'
  end
end

class SaveButton < SlickButton
  def on_button_push
    Setting.create message: 'settings saved'
  end
end

button = SaveButton.new
button.on_button_push
