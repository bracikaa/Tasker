Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tasks do
  	member do
  		patch :complete
  	end
  end

  root 'tasks#index'
end
