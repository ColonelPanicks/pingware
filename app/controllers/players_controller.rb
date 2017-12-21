class PlayersController < ApplicationController
  def new
    @player = Player.new
    @players = Player.all
  end

  def create
    # Run the player_params function to properly pass the attributes
    @player = Player.new(player_params)
    # If the save is successful redirect back to the homepage (leaderboard)
    if @player.save
      redirect_to root_path
    end
  end

  def show
  end

  def index
    @players = Player.all
  end

  private
  def player_params
    # Set the allowed attributes on the :player object (coming from /players/new)
    params.require(:player).permit(:name)
  end
end
