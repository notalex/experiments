class Controller < Application::Namespace::ApplicationController
  def action
    Model.new.name
  end
end
