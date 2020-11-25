Rails.application.routes.draw do
  devise_for :admins
  namespace :admins do
  end
  devise_for :users
  namespace :users do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
