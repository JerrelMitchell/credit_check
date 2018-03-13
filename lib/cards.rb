class Cards
  attr_reader :card_string

  def initialize(card)
    @card_string = card
  end

  def card_number
    @card_string.to_i
  end
end
