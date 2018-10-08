Rails.application.routes.draw do
  #devise_for :users
  get 'sessions/new'
  get 'welcome/index'

  #resources :users

  resources :diaries do
    resources :comments
  end

  get 'login' => 'sessions#new' 
  post 'login' => 'sessions#create' 
  delete 'logout' => 'sessions#destroy'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
