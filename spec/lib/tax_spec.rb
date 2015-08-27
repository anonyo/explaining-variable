require 'spec_helper'

describe Tax do
  describe '#calculate' do
    it 'returns 5% of amount as tax' do
      tax_amount = Tax.new(100)
      expect(tax_amount.calculate).to eq 5
    end
  end
end
