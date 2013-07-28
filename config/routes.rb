SiliconCanal::Application.routes.draw do

  devise_for :users

  resources :people
  resources :companies

  root :to => "companies#index"
end
