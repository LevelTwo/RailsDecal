class Foobar
  def self.baz(ints)
    ints.uniq.map{|n|n.to_i+2}.select{|n|n%2==0&&n<10}.inject{|a,b|a+b}
  end
end
