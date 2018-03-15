# class that handles message output for credit check runner file.
class Message
  def welcome_header
    'Welcome to Credit Card Checker!'
  end

  def ask_validate_question
    'What card number would you like to validate?'
  end

  def check_number_success
    'Card number is valid! '\
    'Would you like to check another card? (y)es / (n)o'
  end

  def check_number_error
    'ERROR! Card number is INVALID! '\
    'Would you like to check another card? (y)es / (n)o'
  end

  def read_input_error
    "Sorry, I didn't recognize that command. Now exiting."
  end

  def goodbye_footer
    'Thanks for using my Credit Card Checker! Have a nice day!'
  end
end
