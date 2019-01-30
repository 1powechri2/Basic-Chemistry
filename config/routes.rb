Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/molecular_mass', to: 'molecular_mass#show'
    end
  end
end
