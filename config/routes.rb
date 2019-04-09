# frozen_string_literal: true

Rails.application.routes.draw do
  get 'carts/index'
  get 'carts/create'
  get 'carts/update'
  get 'carts/destroy'
  devise_for :users
  get 'customers/index'
  get 'cart_orders/index'
  get 'search/results'
  get 'products/index'
  get 'products/about'
  get 'products/show'
  get 'inventory/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resources :cart_orders
  resources :customers
  resources :categories
  resources :carts
  resources :users
  resources :employees

  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
