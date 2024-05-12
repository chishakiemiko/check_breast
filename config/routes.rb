Rails.application.routes.draw do
  
  root "breast_conditions#top"
  devise_for :users
  resources :breast_conditions
  
end
