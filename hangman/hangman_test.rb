require "minitest/autorun"

require_relative "hangman.rb"

class TestHangman < Minitest::Test

    def test_create_new_game_of_hangman
		game = Hangman.new("BEER")
		assert_equal("beer", game.word)
    end

    def test_to_see_if_used_letter_gets_used
        game = Hangman.new("TaBle")
		choice = "a"
		game.used_letters = ["a"]
		assert_equal(true, game.used_letters?(choice))
    end

    def test_check_to_see_if_letter_not_picked_returns_true
		game = Hangman.new("TaBle")
		choice = "a"
		game.used_letters = []
		assert_equal(false, game.used_letters?(choice))
    end
end