Rails.application.routes.draw do


  root 'welcome#index'
  get 'portfolio' => "users#portfolio"
  get 'search_stocks' => "stocks#search"
  get 'welcome/index'

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]

end
