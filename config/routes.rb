Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants do
      resources :reviews
    end
  end

  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create, :show]
  end
  root to: 'restaurants#index'
end
