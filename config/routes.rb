Rails.application.routes.draw do
  
  root "breast_conditions#index"
  devise_for :users
  resources :breast_conditions
  
end
