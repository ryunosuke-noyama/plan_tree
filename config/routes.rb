Rails.application.routes.draw do
  root to: "companies#index"
  resources :companies, only: [:index, :new, :create, :show, :destroy] do
    resources :teams, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :members, only: [:new, :create, :destroy]
    resources :plans, only: [:new, :create, :show, :destroy]
  end
end
