Rails.application.routes.draw do
  devise_for :admins
  namespace :admins do
  	get 'top' => 'admins#top', as:'top'
  	resources :users, only: [:index, :edit, :show, :update, :unsubscribe]
  	resources :movies
  	resources :items
  	resources :genres
  end
  devise_for :users
  namespace :users do
  	root 'users/homes#top'
  	resources :users, only: [:index, :new, :create, :edit, :show, :update]
    resources :avatars
  	resources :movies, only: [:index, :show]
  	resources :items, only: [:index, :show]
  	resources :genres, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
