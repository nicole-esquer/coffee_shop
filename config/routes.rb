Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/coffeeshops', to: 'coffeeshops#index'
  get '/coffeeshops/:id', to: 'coffeeshops#show'

  get '/baristas', to: 'baristas#index'
  get '/baristas/:id', to: 'baristas#show'
  get '/coffeeshops/:id/baristas', to: 'coffeeshop_baristas#index'

end
