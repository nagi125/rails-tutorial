Rails.application.routes.draw do
  # User
  get 'users/new'
  get '/signup',  to: 'users#new'

  # static_pages
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get 'foo/bar'
  get 'foo/baz'
  resources :microposts
end
