class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = set_pokemon
    @pokeball = Pokeball.new(caught_on: Date.today)
  end

  private
  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end
