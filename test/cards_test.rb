require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards'

class CardsTest < Minitest::Test
  def test_it_exists
    card = Cards.new('1234567890')

    assert_instance_of Cards, card
  end

  def test_it_reads_card_number_as_a_string
    card = Cards.new('1234567890')

    assert_equal '1234567890', card.card_string
  end

  def test_it_can_read_another_number_as_a_string
    card = Cards.new('0987654321')

    assert_equal '0987654321', card.card_string
  end

  def test_it_changes_card_number_input_to_integer
    card = Cards.new('1234567890')

    assert_equal 1234567890, card.card_number
  end
end
