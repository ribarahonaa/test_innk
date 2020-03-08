Rails.application.routes.draw do

  resources :arriendos
  resources :series
  resources :films
  get 'index/index'

  root to: 'index#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
