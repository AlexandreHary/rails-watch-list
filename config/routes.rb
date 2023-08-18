Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, only: %i[show new create index] do
    resources :bookmarks, only: %i[new create]
  end
end
# nester la route bookmarks pour récupérer l'id de la liste = http/lists/1/bookmarks
