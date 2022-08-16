Rails.application.routes.draw do
  root 'app_check#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get 'app_check/charts'
end
