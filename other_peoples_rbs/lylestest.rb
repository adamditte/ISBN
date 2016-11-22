require "minitest/autorun"
require_relative "lyleslotto.rb"

class TestLotteryFunction < Minitest::Test

	def test_to_check_for_winner		#check for matching number in an array
		winners = ["1234","2567", "1976","3274"]
		my_number = "2567"
		assert_equal(["2567"], good_luck?(winners, my_number))
	end
	def test_to_check_for_looser		
		winners = ["1234","2567", "1976","3274"]
		my_number = "5567"
		assert_equal([], good_luck?(winners, my_number))
	end
	def test_to_check_for_match_three		
		winners = ["1234","2567", "1976","3274"]
		my_number = "5567"
		assert_equal(["2567"], off_by_one(winners, my_number))
	end
def test_to_check_for_match_three_again	
		winners = ["1234","2567", "1976","3274", "1944","2562"]
		my_number = "5567"
		assert_equal(["2567"], off_by_one(winners, my_number))
	end

end