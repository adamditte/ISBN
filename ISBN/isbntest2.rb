require "minitest/autorun"

require_relative "isbn_redo.rb"



class TestISBN < Minitest::Test



	def test_valid_10_digit_isbn_returns_valid
		number = "0471958697"
		assert_equal("true", isbnlength(number))

	end



	def test_valid_13_digit_isbn_returns_valid
		number = "0471958697245"
		assert_equal("true", isbnlength(number))

	end



	def test_valid_10_digit_check_digit_returns_valid
		number = "0-13609181-4"
		assert_equal(true, isbncheck10(number))

	end

	def test_valid_13_digit_check_digit_returns_valid
		number = "9-2-3-11-44-987-1-2-0"
		assert_equal(true, isbncheck13(number))
	end

end

