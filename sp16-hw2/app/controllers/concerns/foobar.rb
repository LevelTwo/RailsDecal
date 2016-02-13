class Foobar
  # ENTER CODE FOR Q2 HERE
  def initialize(baz)
    @baz = baz
  end

  def bar(cat, options={})
    return "#{cat}#{@baz}#{options[:sat]}"
  end
end
