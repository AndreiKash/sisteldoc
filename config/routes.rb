Rails.application.routes.draw do
  resources :subdivisions
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root  'static_page#welcome_home'
  match '/signup',  to: 'users#new',            via: 'get'

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  match '/internal_directory',    to: 'static_page#internal_directory',    via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
