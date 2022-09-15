Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  devise_for :employees
  devise_for :customers

  resources :restaurants do
    resources :orders
    resources :customers
    resources :food_items
  end

  resources :food_items, only: [:destroy, :update, :edit, :new, :create, :index]

  get 'food_items/index'
  get 'food_items/edit'
  post 'food_items/create'
  get 'orders/list'
  get 'welcome/charts'
  get 'welcome/login'
  get 'employees/index'
  get 'customers/customer_list'
  get 'menus/menuList'
end
