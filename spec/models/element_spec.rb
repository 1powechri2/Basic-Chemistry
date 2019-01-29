require 'rails_helper'

describe 'An element' do
  it 'lives in the database and is described by a model' do
    element = Element.find(1)

    expect(element.name).to eq('Hydrogen')
    expect(element.number).to eq(1)
    expect(element.atomic_weight).to eq(BigDecimal('1.008'))
  end
end
