Paperstest::Application.routes.draw do
  
  root :to => "home#index"
  
  devise_for :users 
  resources :articles, :only => [:index, :show]
  
  resources :users

  namespace :manage do
    resources :articles
    resources :users
  end
  
end
