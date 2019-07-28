Rails.application.routes.draw do
  # sing-up
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  # static_pages
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get 'foo/bar'
  get 'foo/baz'

  # Users
  resources :users
  # resources :microposts
end
