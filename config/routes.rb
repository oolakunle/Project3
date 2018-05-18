Rails.application.routes.draw do
  get 'sessions/new'

  root :to => 'pages#home'

  resources :categories
  resources :products
  resources :users

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'faq' => 'pages#faq'
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
