class Dog
	attr_reader :name, :sound

	def initialize(name)
		@name = name
		@sound = "woof"
	end

	def animal_says()
		"#{name} says #{sound}"
	end
end
