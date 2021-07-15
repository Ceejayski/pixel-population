Rails.application.routes.draw do
  get 'pixels/new'
  post 'pixels/create'
  post 'pixels/generate', to: "pixels#generate_base"
  get "/pixels/:id", to: "pixels#show"
  root to: "pixels#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
