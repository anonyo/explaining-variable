class Tipper
  attr_reader :amount, :discount_percentage, :tip_percentage
  def initialize(args)
    @amount = args[:amount]
    @discount_percentage = args[:discount_percentage] || 0
    @tip_percentage = args[:tip_percentage]
  end

  def total
    bill_amount.with_tax_and_tip
  end

  private
  def bill_amount
    BillAmount.new(amount, discount_percentage, tip_percentage)
  end
end
