Rails.application.routes.draw do
  devise_for :users

  get '/subjects/search' => 'subjects#search'

  resources :subjects do
    resources :reviews
  end

  root 'subjects#index'

end
