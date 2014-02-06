VsGolf::Application.routes.draw do
  
 
  resources :tournaments
  resources :sessions, only: [:new, :create, :destroy]
  resources :scores
  resources :players 
    


  # member method adds following and followers actions to the players controller
  # also the member method means that the routes react to URLs with the id
  # we use get here to arrange the URLs to respond to GET requests 


  resources :sites
  

  get '/signup' => 'players#new'
  
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin', to: 'sessions#new'
  root to: "sites#index"
end

#  tournaments GET    /tournaments(.:format)          tournaments#index
#                 POST   /tournaments(.:format)          tournaments#create
#  new_tournament GET    /tournaments/new(.:format)      tournaments#new
# edit_tournament GET    /tournaments/:id/edit(.:format) tournaments#edit
#      tournament GET    /tournaments/:id(.:format)      tournaments#show
#                 PATCH  /tournaments/:id(.:format)      tournaments#update
#                 PUT    /tournaments/:id(.:format)      tournaments#update
#                 DELETE /tournaments/:id(.:format)      tournaments#destroy
#        sessions POST   /sessions(.:format)             sessions#create
#     new_session GET    /sessions/new(.:format)         sessions#new
#         session DELETE /sessions/:id(.:format)         sessions#destroy
#          scores GET    /scores(.:format)               scores#index
#                 POST   /scores(.:format)               scores#create
#       new_score GET    /scores/new(.:format)           scores#new
#      edit_score GET    /scores/:id/edit(.:format)      scores#edit
#           score GET    /scores/:id(.:format)           scores#show
#                 PATCH  /scores/:id(.:format)           scores#update
#                 PUT    /scores/:id(.:format)           scores#update
#                 DELETE /scores/:id(.:format)           scores#destroy
#         players GET    /players(.:format)              players#index
#                 POST   /players(.:format)              players#create
#      new_player GET    /players/new(.:format)          players#new
#     edit_player GET    /players/:id/edit(.:format)     players#edit
#          player GET    /players/:id(.:format)          players#show
#                 PATCH  /players/:id(.:format)          players#update
#                 PUT    /players/:id(.:format)          players#update
#                 DELETE /players/:id(.:format)          players#destroy
#           sites GET    /sites(.:format)                sites#index
#                 POST   /sites(.:format)                sites#create
#        new_site GET    /sites/new(.:format)            sites#new
#       edit_site GET    /sites/:id/edit(.:format)       sites#edit
#            site GET    /sites/:id(.:format)            sites#show
#                 PATCH  /sites/:id(.:format)            sites#update
#                 PUT    /sites/:id(.:format)            sites#update
#                 DELETE /sites/:id(.:format)            sites#destroy
#          signup GET    /signup(.:format)               players#new
#         signout DELETE /signout(.:format)              sessions#destroy
#          signin GET    /signin(.:format)               sessions#new
#            root GET    /                               sites#index


