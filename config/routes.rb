Rails.application.routes.draw do
  devise_for :users

  get '/subjects/search' => 'subjects#search'
  get 'subjects/sign_up' => 'subjects#sign_up'

  resources :subjects do
    resources :reviews
  end

  root 'subjects#index'

end
