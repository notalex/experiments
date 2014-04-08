class Model < Application::Namespace::ActiveModel
  def name
    'Mr. Model'
  end

  def check_relation
    Lodem::CONST
  end
end
