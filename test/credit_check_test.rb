require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

# testing methods for CreditCheck class.
class CreditCheckTest < Minitest::Test
  def setup
    @valid_card1   = 5_541_808_923_795_240
    @valid_card2   = 6_011_797_668_867_828
    @invalid_card1 = 5_541_801_923_795_240
    @invalid_card2 = 4_024_007_106_512_380
    @checker1 = CreditCheck.new(@invalid_card1)
    @checker2 = CreditCheck.new(@valid_card2)
  end

  def test_it_exists
    assert_instance_of CreditCheck, @checker1
  end

  def test_it_returns_array_of_individual_numbers
    result = [0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5]
    assert_equal result, @checker1.digitize
  end

  def test_it_doubles_odd_indexed_numbers_in_card_number_array
    result = [0, 8, 2, 10, 9, 14, 3, 4, 9, 2, 0, 16, 1, 8, 5, 10]
    assert_equal result, @checker1.double_odd_indexes
  end

  def test_it_sums_double_digit_numbers
    result = [0, 8, 2, 1, 9, 5, 3, 4, 9, 2, 0, 7, 1, 8, 5, 1]
    assert_equal result, @checker1.sum_double_digits
  end

  def test_it_sums_the_array
    assert_equal 65, @checker1.total_array_sum
  end

  def test_it_returns_a_valid_check_digit_of_zero
    refute @checker1.check_digit
    assert @checker2.check_digit
  end
end
