Rails.application.routes.draw do
  get 'users/login'
  get 'users/register'
  post 'users/reg'

  post 'users/demo'

  root to: 'users#register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
