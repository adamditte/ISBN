require "minitest/autorun"
require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fox.rb"

class TestAnimalSounds < Minitest::Test

	def test_cat_name
		animal = Cat.new("Kitty")
		assert_equal("Kitty", animal.name)
	end 

	def test_fox_name
		animal = Fox.new("Mister")
		assert_equal("Mister", animal.name)
	end 
	def test_dog_name
		animal = Dog.new("Frank")
		assert_equal("Frank", animal.name)
	end 

	def test_cat_sound
		animal = Cat.new("Kitty")
		assert_equal("meow", animal.sound)
	end

	def test_fox_sound
		animal = Fox.new("Mister")
		assert_equal("meep", animal.sound)
	end

	def test_dog_sound
		animal = Dog.new("Frank")
		assert_equal("woof", animal.sound)
	end

	def test_kitty_says_meow
		animal = Cat.new("Kitty")
		assert_equal("Kitty says meow", animal.animal_says)
	end






	end