Rails.application.routes.draw do
  devise_for :users, controller: { sessions: 'users/sessions'}
  devise_for :models
  resources :categories
  resources :vendors



  get 'admin' => 'admin#index'
  get "vendors/new" => 'vendors#new', :as => :new_vendors
  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  end

  resources :users
  resources :type_devices

  root 'status#index', as: 'status_index'

  resources :devices 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
