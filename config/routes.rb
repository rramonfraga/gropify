Rails.application.routes.draw do
  devise_for :users
  
  resources :pets , only: [:index, :show, :new, :create]

end
