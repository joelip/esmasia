Esmtestprep::Application.routes.draw do

  namespace :api do
    resources :users
    get '/current_user', to: 'users#current_user', as: 'current_user'
  end

  root to: 'static_pages#coming_soon'
  resources :sessions
  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  get '/sign_out', to: 'sessions#destroy', as: 'sign_out'
  get '/home', to: 'static_pages#coming_soon'

  get '/demo', to: 'static_pages#demo'
  get '/demo/classes', to: 'static_pages#classes'
  get '/demo/payment', to: 'enrollment#payment_page'

  # data routes
  post '/create_enrollment', to: 'enrollment#create_enrollment'

end
