Rails.application.routes.draw do
  root 'items#top'
  get '/signup', to: 'users#new'
  get '/login', to: 'users#login_form'
  resources :items, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
