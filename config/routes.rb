Rails.application.routes.draw do
  devise_for :users

  get '/subjects/search' => 'subjects#search'

  get '/subjects/:id/alert' => 'subjects#alert'

  get '/subjects/:subject_id/reviews/alert' => 'reviews#alert'

  resources :users, only: :show
  resources :subjects do
    resources :maps, only: [:new, :create]
    resources :reviews, except: [:destroy]
  end

  resources :images, only: [] do
    resources :likes, only: [:create, :destroy]
  end

  root 'subjects#index'

end
