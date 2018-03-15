require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require './lib/message'

# testing methods for CreditCheck class.
class MessageTest < Minitest::Test
  def setup
    @message = Message.new
  end

  def test_it_exists
    assert_instance_of Message, @message
  end

  def test_it_has_a_header_and_a_footer
    result1 = 'Welcome to Credit Card Checker!'
    result2 = 'Thanks for using my Credit Card Checker! Have a nice day!'
    assert_equal result1, @message.welcome_header
    assert_equal result2, @message.goodbye_footer
  end

  def test_it_asks_for_card_number
    result = 'What card number would you like to validate?'
    assert_equal result, @message.ask_validate_question
  end

  def test_it_replies_with_success_and_failures_and_asks_to_check_new_card
    result1 = 'Card number is valid! '\
    'Would you like to check another card? (y)es / (n)o'
    result2 = 'ERROR! Card number is INVALID! '\
    'Would you like to check another card? (y)es / (n)o'

    assert_equal result1, @message.check_number_success
    assert_equal result2, @message.check_number_error
  end

  def test_it_has_an_error_message_for_invalid_inputs
    result = "Sorry, I didn't recognize that command. Now exiting."
    assert_equal result, @message.read_input_error
  end
end
