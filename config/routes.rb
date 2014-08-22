Rails.application.routes.draw do

  root to: 'posts#index'
  resources :posts do
    resources :comments
  end

  # show page for all posts related to a tag
  get '/tags/:id', to: 'tags#show'

end