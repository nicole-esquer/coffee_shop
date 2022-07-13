Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/coffeeshops', to: 'coffeeshops#index'
  get '/coffeeshops/:id', to: 'coffeeshops#show'
  get '/coffeeshops/new', to: 'coffeeshop#new'
  get '/coffeeshops/:id/edit', to: 'coffeeshops#edit'

  get '/baristas', to: 'baristas#index'
  get '/baristas/:id', to: 'baristas#show'
  get '/coffeeshops/:id/baristas', to: 'coffeeshop_baristas#index'
  get '/coffeeshops/:id/baristas/new', to: 'coffeeshop_baristas#new'
  get '/baristas/:id/edit', to: 'baristas#edit'

  post '/coffeeshops', to: 'coffeeshops#create'
  post '/coffeeshops/:id/baristas', to: 'coffeeshop_baristas#create'

  patch '/coffeeshops/:id', to: 'coffeeshops#update'
  patch '/baristas/:id', to: 'baristas#update'

  delete '/coffeeshops/:id', to: 'coffeeshops#destroy'
  delete '/baristas/:id', to: 'baristas#destroy'
  
end
