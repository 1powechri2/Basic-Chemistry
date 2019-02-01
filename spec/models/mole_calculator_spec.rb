require 'rails_helper'

describe 'A mole calculator' do
  before(:all) do
    compound = 'C6H12O6'
    @grams_of_compound = BigDecimal('7.5')
    count = ElementCounter.new.element_counter(compound)
    @molar_mass = MolecularMassCalculator.new.molecular_mass(count)
    @mole_calculator = MoleCalculator.new
  end

  it 'has a method that finds places behind the decimal' do
    deciplace1 = @mole_calculator.molar_mass_deci_places(@molar_mass)
    deciplace2 = @mole_calculator.gram_weight_deci_places(@grams_of_compound)

    expect(deciplace1).to eq(3)
    expect(deciplace2).to eq(1)
  end

  it 'can find which sig fig to round to' do
    actual = @mole_calculator.determine_sig_figs(@molar_mass, @grams_of_compound)
    expected = 1

    expect(actual).to eq(expected)
  end
end
