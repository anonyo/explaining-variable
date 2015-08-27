class Tipper
  TAX = 0.05

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    amount + tax - calculate(discount_percentage) + calculate(tip_percentage)
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage

  def tax
    Tax.new(amount).calculate
  end

  def calculate(percentage)
    (amount * (percentage / 100.0))
  end
end
