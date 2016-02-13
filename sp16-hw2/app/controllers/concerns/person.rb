class Person
  def initialize(name, age)
    @nickname = name.slice(0, 4)
    @name = name
    @age = age
  end

  def introduce
    return "Hi my name is #{@name}! I am #{@age} years old."
  end

  def birth_year
    time = Time.new
    return "I was born in the year #{time.year - @age.to_i}."
  end

  def nickname
    return "My nickname is #{@nickname}."
  end
end
