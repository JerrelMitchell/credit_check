require './lib/credit_check'
require './lib/message'
require './lib/statement'

message   = Message.new
statement = Statement.new

puts message.welcome_header
puts message.ask_validate_question

statement.game_loop
