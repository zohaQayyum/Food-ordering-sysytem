Rails.application.routes.draw do
  devise_for :customers
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get 'welcome/charts'
   get 'welcome/login'
   get 'welcome/register'
end
