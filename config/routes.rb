Rails.application.routes.draw do


  root 'pages#index'
  resources :chatrooms do
    resources :messages
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
