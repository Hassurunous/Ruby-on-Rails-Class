Rails.application.routes.draw do
    resources :users
  get 'dogs', to: 'dogs#index'
  get 'dogs/new', to: 'dogs#new'
  #get 'dogs/:id', to: 'dogs#show', :id /\d+/
  post 'dogs', to: 'dogs#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
