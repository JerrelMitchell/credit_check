class CreditCheck
  def initialize(card)
    @card = card
  end

  def double_odd_indexes
    @card.card_number.digits.map.with_index do |number, index|
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def double_digit_sums
    double_odd_indexes.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def total_array_sum
    double_digit_sums.sum
  end

  def check_digit
    total_array_sum.digits[0]
  end
end
