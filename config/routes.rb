Rails.application.routes.draw do
  devise_for :users
  root 'catalogues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :catalogues, except: :destroy
end
