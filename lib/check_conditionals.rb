require './lib/message'

# class that handles conditional statement(s) for runner file
class CheckConditionals
  def initialize
    @message = Message.new
  end

  def retrieve_new_card
    new_card = gets.strip.to_i
    @card = CreditCheck.new(new_card)
    failed_validation if new_card < 5
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

  def game_loop
    loop do
      retrieve_new_card
      case @card.check_digit?
      when true then successful_validation
      when false then failed_validation
      else
        @message.goodbye_footer
        abort
      end
    end
  end
end
