require_relative "cat.rb"
require_relative "fox.rb"
require_relative "dog.rb"

def animal_noise
	cat = Cat.new("Kitty")
	fox = Fox.new("Mister")
	dog = Dog.new("Frank")

collection = [cat, fox, dog]
sound = []


	collection.each do |animal|
		sound << animal.animal_says
	end
	puts sound
end

animal_noise
