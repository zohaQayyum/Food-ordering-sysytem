Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :employees
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/charts'
  get 'welcome/login'
end
