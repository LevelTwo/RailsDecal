class PokemonsController < ApplicationController

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health -= 10
    @pokemon.save

    if @pokemon.health < 1
      @pokemon.delete
    end

    redirect_to trainer_path :id => current_trainer.id
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer_id = current_trainer.id

    if @pokemon.save
      redirect_to trainer_path :id => current_trainer.id
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render 'new'
    end

  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :level, :trainer_id, :health)
  end

end
