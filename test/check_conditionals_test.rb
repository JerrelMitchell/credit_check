require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require './lib/message'
require './lib/check_conditionals'

# testing statement class methods
class CheckConditionalsTest < Minitest::Test
  def setup
    @input1 = 'yes'
    @input2 = 'no'
    @conditionals = CheckConditionals.new
  end

  def test_it_exists
    assert_instance_of CheckConditionals, @conditionals
  end

  def test_it_validates_input
    assert_equal 'yes', @conditionals.validate_conditional(@input1)
    assert_equal 'no', @conditionals.validate_conditional(@input2)
  end
end
