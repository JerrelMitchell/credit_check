# class that handles message output for credit check runner file.
class CreditCheckMessage
  def welcome_header
    'Welcome to Credit Card Checker!'
  end

  def ask_question
    'What card number would you like to validate?'
  end

  def check_number_success
    'Card number is valid! Would you like to check another card? (y/n)'
  end

  def check_number_error
    'ERROR! Card number is INVALID! Would you like to check another card? (y/n)'
  end

  def goodbye_footer
    'Thanks for using my Credit Card Checker! Have a nice day!'
  end
end
