Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#new'
  get '/games/play', to: 'games#play'

  resources :games
  resources :players
  resources :participants
  
  get '/cards/build_cards', to: 'cards#build_cards'

  post '/cards/show', to: 'cards#choose_time_period'

  get '/cards/show', to: 'cards#show'
  
end
