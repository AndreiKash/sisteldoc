Rails.application.routes.draw do
  get 'users/new'

  root  'static_page#welcome'
  match '/home',    to: 'static_page#home',    via: 'get'
  match '/internal_directory',    to: 'static_page#internal_directory',    via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
