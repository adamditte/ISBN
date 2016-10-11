require "minitest/autorun"

require_relative "pairing.rb"



class TestPairing < Minitest::Test

	def test_for_empty_array
		array = []
		assert_equal([], randomizer([]))
	end

	def test_for_four_names
		array = randomizer(["susan", "joe", "cyndi", "marv"])
		assert_equal(2, array.count)
	end

	def test_for_pairing_six_names
		array = randomizer(["susan", "joe", "cyndi", "marv","jeremy","don"])
		assert_equal(3, array.count)
	end

	def test_al_names_returns_6
		array = randomizer(["susan", "joe", "cyndi", "marv","jeremy","don", "stepahnie","susan","adam","mike","maxx","john"])
		assert_equal(6, array.count)
	end
	
end
