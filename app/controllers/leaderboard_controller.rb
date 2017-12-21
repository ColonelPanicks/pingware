class LeaderboardController < ApplicationController

  def index
    @players = Player.all
  end

end
