Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  root 'houses#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :houses, :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
