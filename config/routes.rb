Rails.application.routes.draw do
  root to: 'pages#home'
  get '/restaurant/:banana', to: 'pages#show', as: 'restaurant'
  get '/contact', to: 'pages#contact'
  post '/search', to: 'pages#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
