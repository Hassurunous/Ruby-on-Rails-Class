Rails.application.routes.draw do
    get "user/show"
    get "user/index"

    get "/user/:id" , to: "user#show"
    get "/user", to: 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
