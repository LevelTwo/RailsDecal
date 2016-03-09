Rails.application.routes.draw do
  root to: 'home#index'
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons', to: 'pokemons#create'  # allows form to render in pokemons/new.html.erb
  devise_for :trainers
  resources :trainers
end
