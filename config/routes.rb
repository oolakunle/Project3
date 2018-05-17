Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :categories
  resources :products
  resources :users

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'faq' => 'pages#faq'
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
end
