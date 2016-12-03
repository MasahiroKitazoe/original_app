Rails.application.routes.draw do
  devise_for :users

  get '/subjects/search' => 'subjects#search'

  get '/subjects/:id/alert' => 'subjects#alert'

  get '/subjects/:subject_id/reviews/alert' => 'reviews#alert'

  resources :users, only: :show
  resources :subjects do
    resources :reviews
    resources :maps
  end

  root 'subjects#index'

end
