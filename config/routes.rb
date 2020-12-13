Rails.application.routes.draw do
  devise_for :admins
  namespace :admins do
  	get 'top' => 'admins#top', as:'top'
  	resources :users, only: [:index, :edit, :show, :update, :unsubscribe]
  	resources :movies do
        resources :items
    end
  	resources :genres
  end
  devise_for :users
  namespace :users do
  	root 'users/homes#top'
  	resources :users, only: [:index, :new, :create, :edit, :show, :update]
    put "users/:id/withdrow" => "users#withdrow", as: "user_withdrow"
    resources :avatars
    get "user/:id/avatars_edit" => "avatars#avatar_edit", as: :avatar_edit
  	resources :movies, only: [:index, :show] do
      resource :my_lists
    end
    get "genres/video_movie" => "movies#video_movie", as: :video_movie
    get "users/:id/my_lists" => "users#my_lists", as: :mylist_index
  	resources :items, only: [:index, :show]
  	resources :genres, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
