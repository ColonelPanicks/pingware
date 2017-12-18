class PlayersController < ApplicationController
  def new
    @player = Player.new
    @players = Player.all
  end

  def create
    # Run the player_params function to properly pass the attributes
    @player = Player.new(player_params)
    if @player.save
      redirect_to new_player_path
    end
  end

  private
  def player_params
    # Set the allowed attributes on the :player object (coming from /players/new)
    params.require(:player).permit(:name)
  end
end
