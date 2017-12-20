class LeaderboardController < ApplicationController
  def index
    @players = Players.new.all
  end
end
