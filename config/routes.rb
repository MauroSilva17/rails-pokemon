Rails.application.routes.draw do
  # root to: "pages#home"
  root to: "pokemons#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "pokemons#index"
  get "/trainers", to: "trainers#index"
  resource :trainer do
    resource :pokemon, except: [:index]
  end
  resource :pokemon, only: [:show]
end
