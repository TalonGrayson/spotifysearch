Rails.application.routes.draw do
  #resources :searchresultalbums

  resources :searchresultalbums do
    resources :albums, only: [:new]
  end

  resources :albums, except: [:new]
  resources :tracks
  resources :artists

  root 'home#index'

  get '/search',        to: 'search#new'
  post '/search',       to: 'search#search'

  #get '/album',         to: 'albums#new'
  get '/searchresultalbums/:searchresultalbum_id/albums/new', as: '/show/album', to: 'albums#new'
end
