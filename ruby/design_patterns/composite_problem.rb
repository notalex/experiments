class Task
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_time_required
    0.0
  end
end

class Task1 < Task
  def initialize
    super('task 1')
  end

  def get_time_required
    1.0
  end
end

class Task2 < Task
  def initialize
    super("task 2")
  end

  def get_time_required
    3.0
  end
end

class CompositeTask < Task
  def intialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each { |task| time += task.get_time_required }
    time
  end
end

class SimplifiedCompositeTask < CompositeTask
  def initialize
    super('Composite Task')
    add_sub_task(Task1.new)
    add_sub_task(Task2.new)
  end
end
