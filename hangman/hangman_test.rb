require "minitest/autorun"

require_relative "hangman.rb"

class TestHangman < Minitest::Test

    def test_create_new_game_of_hangman
		game = Hangman.new("BEER")
		assert_equal("beer", game.word)
    end
end