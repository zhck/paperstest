Paperstest::Application.routes.draw do
  root :to => "home#index"

  
  devise_for :users
  
  resources :articles
  
  resources :users

end
