class Tring < String
  def gsub(*args, &block)
    if args.size == 1
      match(args.first)
      block.call
    else
      super
    end
  end

  def match(*args)
    super
  end
end

obj = Tring.new('foo')
obj.match(/(foo)/)
p $1
p obj.gsub(/(foo)/) { "--#{ $1 }--" }
