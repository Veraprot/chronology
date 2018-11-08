Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#new'

  get '/games/play', to: 'games#play'
  post '/games/play', to: 'games#choose_time_period'

  resources :games
  resources :players
  resources :participants
  
end
