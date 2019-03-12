require 'rails_helper'

describe 'A mole calculator' do
  before(:all) do
    compound = 'C6H12O6'
    @grams_of_compound = BigDecimal('7.5')
    count = ElementCounter.new.element_counter(compound)
    @molar_mass = MolecularMassCalculator.new.molecular_mass(count)
    @mole_calculator = MoleCalculator.new
  end

  # it 'has a method that finds places behind the decimal' do
  #   sig_figs1 = @mole_calculator.molar_mass_sig_figs(@molar_mass)
  #   sig_figs2 = @mole_calculator.gram_weight_sig_figs(@grams_of_compound)
  #
  #   expect(sig_figs1).to eq(6)
  #   expect(sig_figs2).to eq(2)
  # end

  # it 'can find which sig fig to round to' do
  #   actual = @mole_calculator.determine_round_to_sig_figs(@molar_mass, @grams_of_compound)
  #   expected = 2
  #
  #   expect(actual).to eq(expected)
  # end

  it 'calculates moles of a compound' do
    actual = @mole_calculator.calculate_moles(@molar_mass, @grams_of_compound)
    expected = BigDecimal('0.042')

    expect(actual).to eq(expected)
  end
end
