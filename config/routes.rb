Rails.application.routes.draw do
  devise_for :users
  root 'subjects#index'

  resources :subjects
end
