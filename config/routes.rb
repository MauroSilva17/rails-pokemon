Rails.application.routes.draw do
  root to: "pokemons#index"

  resources :pokemons, only: [:index, :show] do
    resources :pokeballs, only: :create
  end
  resources :trainers, only: [:index, :show, :new, :create]
end
