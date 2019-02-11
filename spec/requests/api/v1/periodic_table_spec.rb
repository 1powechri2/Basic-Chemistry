require 'rails_helper'

describe 'periodic table endpoint' do
  context '/api/v1/periodic_table' do
    it 'returns all 117 elements' do
      get '/api/v1/periodic_table'

      body = response.body

      json = JSON.parse(body, symbolize_names: true)

      expect(json.length).to eq(117)
    end
  end
end
