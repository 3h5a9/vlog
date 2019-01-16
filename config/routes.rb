Rails.application.routes.draw do

  get '/login', to: 'admin/sessions#new'
  
  namespace :admin do
    resources :moderators, only: [:index, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
