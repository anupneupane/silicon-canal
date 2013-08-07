SiliconCanal::Application.routes.draw do

  post "events/:id/approve" => "events#approve", :as => "approve_event"
  post "events/:id/unapprove" => "events#unapprove", :as => "unapprove_event"

  resources :event_categories
  resources :events

  devise_for :users

  post "versions/:id/revert" => "versions#revert", :as => "revert_version"

  get "search" => "search#index"
  resources :people
  resources :companies

  root :to => "companies#index"
end
