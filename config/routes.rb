Rails.application.routes.draw do
  root to:"retaurants#index"
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end
