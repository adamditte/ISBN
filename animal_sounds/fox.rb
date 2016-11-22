class Fox
	attr_reader :name, :sound

	def initialize(name)
		@name = name
		@sound = "meep"
	end

	def animal_says()
		"#{name} says #{sound}"
	end
end