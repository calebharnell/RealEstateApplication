Rails.application.routes.draw do

  root 'houses#index'

  get 'houses/:id/enquiry', to: 'houses#enquiry', as: 'enquiry'
  get 'houses/:id/enquirycomplete', to: 'houses#enquirycomplete', as: 'enquirycomplete'
  post 'houses/:id/enquirycomplete', to: 'houses#enquirycomplete'

  get 'charges/new'
  get 'charges/create'

  get '/resources', to: 'pages#resources'

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :houses, :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
