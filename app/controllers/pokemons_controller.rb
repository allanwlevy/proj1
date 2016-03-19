class PokemonsController < ApplicationController

    def capture
        @poke = Pokemon.find(params[:id])
        @poke.update_attribute(:trainer_id, current_trainer.id)
        @poke.save!
        redirect_to root_path
    end

    def damage
        @poke = Pokemon.find(params[:id])
        @poke.update_attribute(:health, @poke.health - 10)
        @poke.save!
        if @poke.health <= 0
            redirect_to PokemonsController: 'destroy', id: :id
        end
        redirect_to trainer_path: trainer_path, id: :id
    end

    def destroy
        Pokemon.find(params[:id]).destroy
        redirect_to trainer_path
    end

    def pokemon_params
        params.require(:pokemon).permit(:id)
    end
end
