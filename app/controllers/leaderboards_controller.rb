class LeaderboardsController < ApplicationController

  def index
    @players = Player.all
  end
  def show
    @players = Player.all
  end

end
