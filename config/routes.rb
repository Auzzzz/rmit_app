Rails.application.routes.draw do


 
 

  get 'categories/new'

  get 'categories/show'

  get 'categories/edit'

  get 'locations/index'

  get 'locations/edit'

  get 'courses/new'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
    post    '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  

  post 'courses/:id/upvote', to: 'upvotes#new', as: 'upvote'
  post 'courses/:id/downvote', to: 'downvotes#new', as: 'downvote'
  
  resources :users
  
  resources :locations
  resources :categories
  resources :courses
end