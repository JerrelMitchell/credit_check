require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def setup
    @card    = Cards.new('1234567890')
    @checker = CreditCheck.new(@card)
  end

  def test_it_exists
    assert_instance_of CreditCheck, @checker
  end

  def test_it_doubles_odd_indexed_numbers_in_card_number_array
    assert_equal [0, 18, 8, 14, 6, 10, 4, 6, 2, 2], @checker.double_odd_indexes
  end

  def test_it_sums_double_digit_numbers
    assert_equal [0, 9, 8, 5, 6, 1, 4, 6, 2, 2], @checker.double_digit_sums
  end

  def test_it_sums_the_array
    assert_equal 43, @checker.total_array_sum
  end

  def test_it_returns_a_check_digit
    assert_equal 3, @checker.check_digit
  end
end
