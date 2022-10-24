Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "dessins", to: "dessins#index"
  get "dessins/new", to: "dessins#new"
  get "dessins/:id", to: "dessins#show", as: :dessin
  post "dessins", to: "dessins#create"
  get "dessins/:id/edit", to: "dessins#edit"
  patch "dessins/:id", to: "dessins#update"
  delete "dessins/:id", to: "dessins#destroy"
end
