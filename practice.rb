class Person
  @@count = 0         

  def initialize(name, age)
    @name = name                 
    @age = age
    @@count += 1
  end

  def introduction
    greeting = "Hello"          
    puts "#{greeting}, I'm #{@name} and I'm #{@age} years old."
  end

  def self.population
    puts "There are #{@@count} people."
  end
end

$global = "Global variable"

PI = 3.14159

puts "Enter the name for the first person:"
name1 = gets.chomp
puts "Enter the age for the first person:"
age1 = gets.chomp.to_i

puts "Enter the name for the second person:"
name2 = gets.chomp
puts "Enter the age for the second person:"
age2 = gets.chomp.to_i

person1 = Person.new(name1, age1)
person2 = Person.new(name2,age2)

person1.introduction             
person2.introduction             
Person.population               

puts PI                       
puts $global               
