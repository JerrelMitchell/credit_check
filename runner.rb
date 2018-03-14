require './lib/credit_check'
require './lib/credit_check_messages'

message = CreditCheckMessage.new

puts message.welcome_header
puts message.ask_question

10.times do
  new_card = gets.chomp.to_i
  card = CreditCheck.new(new_card)

  if card.check_digit.zero?
    puts message.check_number_success
    input = gets.chomp.downcase

    if input.include?('y' || 'yes')
      puts message.ask_question
    elsif input.include?('n' || 'no')
      puts message.goodbye_footer
      break
    end

  elsif card.check_digit.zero? == false
    puts message.check_number_error
    input = gets.chomp.downcase

    if input.include?('y' || 'yes')
      puts message.ask_question
    elsif input.include?('n' || 'no')
      puts message.goodbye_footer
      break
    end

  else
    puts message.goodbye_footer
    break
  end
end
