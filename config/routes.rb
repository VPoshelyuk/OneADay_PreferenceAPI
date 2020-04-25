Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/movies", to: "movies#index"
      get "/tvshows", to: "movies#index"
      get "/games", to: "movies#index"
      # resources :movies
      # resources :shows
      # resources :games
    end
  end
end
