Rails.application.routes.draw do


  devise_for :users
  resources :notes do
    resources :items, only: [:create, :update, :destroy]
    member do
    	get:print
    end

  end
  resources :devices
  resources :brands
  resources :clients
  root 'welcome#index'

end
