Rails.application.routes.draw do
  
  root "breast_conditions#top"
  
  resources :breast_conditions
  
    

  # get 'breast_conditions/index'
  # get 'breast_conditions/new'
  # get 'breast_conditions/create'
  # get 'breast_conditions/edit'
  # get 'breast_conditions/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
