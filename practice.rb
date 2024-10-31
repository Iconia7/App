class Person
  @@population_count = 0         # Class variable

  def initialize(name, age)
    @name = name                 # Instance variable
    @age = age
    @@population_count += 1
  end

  def introduce
    greeting = "Hello"           # Local variable
    puts "#{greeting}, I'm #{@name} and I'm #{@age} years old."
  end

  def self.population
    puts "There are #{@@population_count} people."
  end
end

# Global variable example
$global_var = "I'm accessible anywhere in this Ruby program!"

# Constant
PI = 3.14159

# Creating instances of Person
person1 = Person.new("Alice", 30)
person2 = Person.new("Bob", 25)

# Calling methods
person1.introduce               # => "Hello, I'm Alice and I'm 30 years old."
person2.introduce               # => "Hello, I'm Bob and I'm 25 years old."
Person.population               # => "There are 2 people."

puts PI                         # => 3.14159
puts $global_var                # => "I'm accessible anywhere in this Ruby program!"
