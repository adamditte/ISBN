class Cat
	attr_reader :name, :sound

	def initialize(name)
		@name = name
		@sound = "meow"
	end

	def animal_says()
		"#{name} says #{sound}"
	end
end
