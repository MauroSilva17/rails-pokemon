class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def Show
    @pokemon = set_pokemon
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end
