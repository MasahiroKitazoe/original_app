Rails.application.routes.draw do
  devise_for :users

  get '/subjects/search' => 'subjects#search'

  resources :subjects

  root 'subjects#index'

end
