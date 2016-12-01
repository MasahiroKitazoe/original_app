Rails.application.routes.draw do
  devise_for :users

  get '/subjects/search' => 'subjects#search'

  resources :users, only: :show
  resources :subjects do
    resources :reviews
    resources :maps
  end

  root 'subjects#index'

end
