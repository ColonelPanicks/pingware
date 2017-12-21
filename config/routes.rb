Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players
  resource :leaderboards, :as => :leaderboard, :path => :leaderboard
  root 'leaderboards#show'

end
