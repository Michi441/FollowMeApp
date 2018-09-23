Rails.application.routes.draw do

  devise_for :users


  resources :profiles, only: [:index, :show] do
    member do
      get :follow
      get :unfollow
      get :followers
      get :follows
    end
  end






  root 'profiles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
