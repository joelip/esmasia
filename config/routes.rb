RailsAngularStarter::Application.routes.draw do

  namespace :api do
    resources :users
    get '/current_user', to: 'users#current_user', as: 'current_user'
  end

  root to: 'sessions#new'
  resources :sessions
  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  get '/sign_out', to: 'sessions#destroy', as: 'sign_out'
  get '/home', to: 'user_pages#home', as: 'home'

end
