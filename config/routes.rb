Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/pokemons/capture', to: 'pokemons#capture', as: :capture
  patch '/pokemons/damage', to: 'pokemons#damage', as: :damage
  get '/pokemons/trainer', to: 'trainers#show'
  delete '/pokemons/delete', to: 'pokemons#destroy'
end
