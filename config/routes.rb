Rails.application.routes.draw do
  get 'users/new'
  get 'foo/bar'
  get 'foo/baz'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/help', to: 'static_pages#help'
  root 'static_pages#home'
end
