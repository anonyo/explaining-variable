 class Tax < Struct.new(:amount)
  TAX_RATE = 0.05
  def calculate
    (amount * TAX_RATE)
  end
end
