require "minitest/autorun"
require_relative "isbnmob.rb"

class TestISBN < Minitest::Test
	def test_valid_ten_digit_isbn_returns_true
		isbn = "0471958697"
		assert_equal(true, valid_isbn?(isbn))
	end

	def test_empty_string_returns_false
		isbn = ""
		assert_equal(false, valid_isbn?(isbn))
	end

	def test_valid_isbn_with_spaces_returns_true
		isbn = "0 47 195 8697"
		assert_equal(true, valid_isbn?(isbn))
	end

	def test_valid_isbn_with_dashes_returns_true
		isbn = "0-47-195-8697"
		assert_equal(true, valid_isbn?(isbn))
	end
	
	def test_valid_isbn_10_returns_true
		isbn = "2471958699"
		assert_equal(true, valid_isbn?(isbn))
	end

	def test_valid_isbn_with_x_returns_true
		isbn = "123456789X"
		assert_equal(true, valid_isbn?(isbn))
	end

	def test_invalid_isbn_with_x_returns_false
		isbn = "123456729X"
		assert_equal(false, valid_isbn?(isbn))
	end




end

