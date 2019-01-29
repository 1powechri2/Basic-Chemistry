require 'rails_helper'

describe 'An element' do
  it 'lives in the database and is described by a model' do
    element = Element.find(1)

    expect(element.name).to eq('Hydrogen')
    expect(element.number).to eq(1)
    expect(element.atomic_weight).to eq(BigDecimal('1.008'))
  end
end

describe 'The Element class' do
  context 'can calculate the weight of a compound' do
    it 'first step, seperate integers from strings' do
      compound = 'NH2CONH2'
      expected = ['NH', '2', 'CONH', '2']

      result = Chemist.new(compound).seperate_integers_from_letters

      expect(result).to eq(expected)
    end
  end
end
