require 'spec_helper'

describe 'a user requests a molecular mass' do
  context '/api/v1/molecular_mass?molecule=C6H12O6' do
    it 'returns the molecular mass' do
      get '/api/v1/molecular_mass?molecule=C6H12O6'

      body = response.body

      json = JSON.parse(body, symbolize_names: true)

      expect(json[:molecule]).to eq('C6H12O6')
      expect(json[:molecular_mass]).to eq('180.156')
    end
  end
end
