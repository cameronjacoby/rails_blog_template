Rails.application.routes.draw do
  root to: 'posts#index'
  
  resources :posts do
    resources :ads
  end

  # show page for all posts related to a tag
  get '/tags/:id', to: 'tags#show'
end