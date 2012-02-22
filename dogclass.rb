class Dog
  def initialize (name)
    @name = name
  end
  
  def bark
    "Ruff"
  end

  def eat
    "Chowchow"
  end

  def chase_cat
    "Arararar"
  end
end

d = Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat
