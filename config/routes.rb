Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/molecular_mass', to: 'molecular_mass#show'
      get '/molecular_quantity', to: 'molecular_quantity#show'
      get '/periodic_table', to: 'periodic_table#index'
    end
  end
end
