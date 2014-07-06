Esmtestprep::Application.routes.draw do

  namespace :api do
    resources :users
    get '/current_user', to: 'users#current_user', as: 'current_user'
  end

  root to: 'static_pages#home'
  resources :sessions
  get '/sign_in', to: 'sessions#new', as: 'sign_in'
  get '/sign_out', to: 'sessions#destroy', as: 'sign_out'
  get '/home', to: 'static_pages#home'
  get '/classes', to: 'static_pages#classes'
  get '/classes/payment', to: 'enrollment#payment_page', as: 'payment'
  get '/mentors', to: 'static_pages#mentors'
  get '/mentorship-model', to: redirect('/')
  get '/esm-offerings', to: redirect('/')

  # get '/demo', to: 'static_pages#home'
  # get '/demo/classes', to: 'static_pages#classes'
  # get '/demo/payment', to: 'enrollment#payment_page', as: 'payment'

  # data routes
  post '/create_enrollment', to: 'enrollment#create_enrollment'
  post '/create_payment', to: 'payments#create_payment'

end
