Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #This is what will tell in the Routes list as well as "front page"
  #  http://localhost:3000/rails/info/routes

  root 'clients#index' #for now

  resources :doctors
  resources :clients
end
