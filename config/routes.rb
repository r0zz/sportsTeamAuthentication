Rails.application.routes.draw do
  get 'home/home'
  get 'home/login'
  get 'home/logout'
  get 'home/user'
  get 'home/saveList'
  get 'home/removeTeams'
  
  post 'home/login'
  post 'home/home'
  post 'home/saveList'
  post 'home/removeTeams'
  root :to => 'home#home'
  
  resources :sports_teams
  resources :teams
  resources :stadia
  resources :leagues
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
