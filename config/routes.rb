Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  #Rutas de listas 
  get "/lists/new", to: "lists#new"
  get "/lists/:id", to: "lists#show"
  get "/lists/:id/edit", to: "lists#edit"
  post "/lists", to: "lists#create"
  patch "/lists/:id", to: "lists#update", as: :list
  delete "/lists/:id", to: "lists#destroy"

end
