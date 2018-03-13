require './lib/cards'
require './lib/credit_check'
require 'pry'

puts 'What card number would you like to validate?'
card_number = gets.chomp.to_i

card_array = card_number.digits
odd_indexed_nums_doubled = card_array.map.with_index do |number, index|
  if index.odd?
    number * 2
  else
    number
  end
end

sum_single_digits_between_two_digit_nums = odd_indexed_nums_doubled.map do |num|
  if num > 9
    num.digits.sum
  else
    num
  end
end

full_array_sum = sum_single_digits_between_two_digit_nums.sum

card_validation_array = full_array_sum.digits

final_validation = card_validation_array[0]

binding.pry

if final_validation.zero?
  puts 'Card Number Valid! Thank you!'
else
  puts 'Sorry! Card Number Invalid! Try again!'
end
