Rails.application.routes.draw do
  devise_for :users
  root to: "companies#index"
  resources :users, only: [:edit, :update]
  resources :companies, only: [:index, :new, :create, :show, :destroy] do
    resources :teams, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :members, only: [:new, :create, :destroy]
    resources :plans, only: [:new, :create, :show, :destroy] do
      resources :events, only: [:new, :create, :show, :edit, :update, :destroy]
    end
  end
end
