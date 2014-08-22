Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts

  # show page for all posts related to a tag
  get '/tags/:id', to: 'tags#show'
end