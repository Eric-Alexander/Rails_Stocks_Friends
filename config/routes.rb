Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships

  root 'welcome#index'
  get 'portfolio' => "users#portfolio"
  get 'search_stocks' => "stocks#search"
  get 'welcome/index'
  get 'my_friends' => 'users#my_friends'
  get 'search_friends' => 'users#search'
  post 'add_friend' => 'users#add_friend'



end
