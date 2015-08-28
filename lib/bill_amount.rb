class BillAmount < Struct.new(:amount, :discount_percentage, :tip_percentage)
  def with_tax_and_tip
    amount + tax - discount + tip
  end

  private
  def tax
    Tax.new(amount).calculate
  end

  def calculate(percentage)
    (amount * (percentage / 100.0))
  end

  def discount
    calculate(discount_percentage)
  end

  def tip
    calculate(tip_percentage)
  end
end
