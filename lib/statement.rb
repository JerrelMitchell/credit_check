require './lib/message'
require 'pry'

# class that handles conditional statement(s) for runner file
class Statement
  def initialize
    @message = Message.new
  end

  def get_new_card
    new_card = gets.chomp.to_i
    @card = CreditCheck.new(new_card)
  end

  def validate_conditional(input)
    if input.include?('y' || 'yes')
      puts @message.ask_validate_question
    elsif input.include?('n' || 'no')
      puts @message.goodbye_footer
      abort
    else
      puts @message.read_input_error
      abort
    end
    input
  end

  def successful_validation
    puts @message.check_number_success
    input = gets.chomp.downcase
    validate_conditional(input)
  end

  def failed_validation
    puts @message.check_number_error
    input = gets.chomp.downcase
    validate_conditional(input)
  end

  def abort_message
    puts @message.goodbye_footer
    abort
  end

  def game_loop
    10.times do
      get_new_card
      if @card.check_digit
        successful_validation
      elsif !@card.check_digit
        failed_validation
      else
        abort_message
      end
    end
  end
end
