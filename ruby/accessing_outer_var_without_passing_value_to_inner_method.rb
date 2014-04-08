class Person

  def self.meth
    x = 'variable in outer'
    klass = class << self; self; end
    klass.send :define_method, :inner do
        p x
    end
  end
end

Person.meth
Person.inner
