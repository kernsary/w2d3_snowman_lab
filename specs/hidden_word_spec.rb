require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word.rb')
require_relative('../game.rb')
require_relative('../player.rb')

class HiddenWordTest < MiniTest::Test

  def setup

    @hidden_word_1 = HiddenWord.new("Hidden")

    @player_1 = Player.new("Les")

    @game_1 = Game.new(@player_1, @hidden_word_1)


  end

  def test_hidden_word_has_word
    assert_equal("Hidden", @hidden_word_1.word)
  end

  def test_hidden_word_has_displayed_word
    assert_equal("******", @hidden_word_1.displayed_word)
  end

end
