# class with methods that handle the luhn algorithm in 5 steps.
class CreditCheck
  def initialize(card)
    @card = card
  end

  def digitize
    @card.digits
  end

  def double_odd_indexes
    digitize.map.with_index do |number, index|
      index.odd? ? number * 2 : number
    end
  end

  def sum_double_digits
    double_odd_indexes.map do |number|
      number > 9 ? number - 9 : number
    end
  end

  def total_array_sum
    sum_double_digits.sum
  end

  def check_digit?
    (total_array_sum % 10).zero?
  end
end
