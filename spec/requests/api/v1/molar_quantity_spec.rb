require 'rails_helper'

describe 'a user requests a molar quantity based on specific given weight of a compound' do
  context '/api/v1/molecular_mass?molecule=C6H12O6&grams=7.5' do
    it 'returns the the molar quantity' do
      get '/api/v1/molecular_quantity?molecule=C6H12O6&weight=7.5'

      body = response.body

      json = JSON.parse(body, symbolize_names: true)

      expect(json[:molecule]).to eq('C6H12O6')
      expect(json[:molecular_mass]).to eq('180.156 grams')
      expect(json[:given_weight]).to eq('7.5 grams')
      expect(json[:number_of_moles]).to eq('0.04')
    end
  end
end
