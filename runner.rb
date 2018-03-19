require './lib/credit_check'
require './lib/message'
require './lib/check_conditionals'

message      = Message.new
conditionals = CheckConditionals.new

puts message.welcome_header
puts message.ask_validate_question
conditionals.game_loop
