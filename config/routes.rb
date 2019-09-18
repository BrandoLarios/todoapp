Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Rutas de listas 
  get 'list/new', to: 'lists#new'
  post 'list', to: 'lists#create'
  

end
