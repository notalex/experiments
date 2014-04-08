class Employee
  attr_reader :name, :title, :salary

  def initialize(name, title, salary, payroll)
    @name = name
    @title = title
    @salary = salary
    @payroll = payroll
  end

  def salary = (new_salary)
    @salary = new_salary
    @payroll.update(self)
  end
end

class Payroll
  def update(employee)
    puts "New salary for #{ employee.name } is #{ employee.salary }"
  end
end
