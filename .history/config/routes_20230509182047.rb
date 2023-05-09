Rails.application.routes.draw do
  get 'abou', to: 'pages#about'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
