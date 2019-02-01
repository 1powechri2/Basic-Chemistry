require 'rails_helper'

describe 'A molar mass calculator' do
  before(:all) do
    compound = 'C6H12O6'
    @counted_elements = ElementCounter.new.element_counter(compound)
    @mass_calculator  = MolecularMassCalculator.new
  end
  it 'seperates the elements from their quantities' do
    expected = [['C', 'H', 'O'], [6, 12, 6]]
    actual = @mass_calculator.seperate_elements_from_count(@counted_elements)

    expect(actual).to eq(expected)
  end
  it 'calculates the molar mass of a substance' do
    seperated = [['C', 'H', 'O'], [6, 12, 6]]

    expected = BigDecimal('180.156')

    actual = @mass_calculator.calculate_molecular_mass(seperated)

    expect(actual).to eq(expected)
  end
  it 'compiles above helper methods into one molecular mass method' do
    expected = BigDecimal('180.156')
    actual = @mass_calculator.molecular_mass(@counted_elements)

    expect(actual).to eq(expected)
  end
end
