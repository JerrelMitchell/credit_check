require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require './lib/message'
require './lib/statement'

# testing statement class methods
class StatementTest < Minitest::Test
  def setup
    @input1 = 'y'
    @input2 = 'n'
    @statement = Statement.new
  end

  def test_it_exists
    assert_instance_of Statement, @statement
  end

  def test_it_validates_input
    assert_equal 'y', @statement.validate_conditional(@input1)
    assert_equal 'n', @statement.validate_conditional(@input2)
  end
end
