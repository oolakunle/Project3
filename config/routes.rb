# == Route Map
#
#        Prefix Verb   URI Pattern                    Controller#Action
#  sessions_new GET    /sessions/new(.:format)        sessions#new
#          root GET    /                              pages#home
#    categories GET    /categories(.:format)          categories#index
#               POST   /categories(.:format)          categories#create
#  new_category GET    /categories/new(.:format)      categories#new
# edit_category GET    /categories/:id/edit(.:format) categories#edit
#      category GET    /categories/:id(.:format)      categories#show
#               PATCH  /categories/:id(.:format)      categories#update
#               PUT    /categories/:id(.:format)      categories#update
#               DELETE /categories/:id(.:format)      categories#destroy
#      products GET    /products(.:format)            products#index
#               POST   /products(.:format)            products#create
#   new_product GET    /products/new(.:format)        products#new
#  edit_product GET    /products/:id/edit(.:format)   products#edit
#       product GET    /products/:id(.:format)        products#show
#               PATCH  /products/:id(.:format)        products#update
#               PUT    /products/:id(.:format)        products#update
#               DELETE /products/:id(.:format)        products#destroy
#         users GET    /users(.:format)               users#index
#               POST   /users(.:format)               users#create
#      new_user GET    /users/new(.:format)           users#new
#     edit_user GET    /users/:id/edit(.:format)      users#edit
#          user GET    /users/:id(.:format)           users#show
#               PATCH  /users/:id(.:format)           users#update
#               PUT    /users/:id(.:format)           users#update
#               DELETE /users/:id(.:format)           users#destroy
#         about GET    /about(.:format)               pages#about
#       contact GET    /contact(.:format)             pages#contact
#           faq GET    /faq(.:format)                 pages#faq
#        signup GET    /signup(.:format)              users#new
#               POST   /signup(.:format)              users#create
#         login GET    /login(.:format)               sessions#new
#               POST   /login(.:format)               sessions#create
#        logout DELETE /logout(.:format)              sessions#destroy
#

Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root :to => 'pages#home'

  resources :categories
  resources :products
  resources :users, only: [:new, :create, :edit, :update, :show]
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

  # get 'show' => 'users#show'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'faq' => 'pages#faq'
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
