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

	def test_valid_10_digit_check_digit_returns_true
		number = "0-13609181-4"
		assert_equal(true, isbncheck10(number))

	end

	def test_valid_13_digit_check_digit_returns_true
		number = "978-3-16-148410-0"
		assert_equal(true, isbncheck13(number))
	end

	def test_invslid_10_letter_check_digit_returns_false
		number = "abcdefghij"
		assert_equal(false, isbncheck10(number))
	end

	def test_invalid_10_digit_check_digit_returns_false
		number = "87654321"
		assert_equal(false, isbncheck10(number))
	end

	def test_invalid_13_digit_check_digit_returns_false
		number = "236-3-16-19874-0"
		assert_equal(false, isbncheck13(number))
	end
	
end

