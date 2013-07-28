SiliconCanal::Application.routes.draw do

  devise_for :users

  post "versions/:id/revert" => "versions#revert", :as => "revert_version"

  get "search" => "search#index"
  resources :people
  resources :companies

  root :to => "companies#index"
end
