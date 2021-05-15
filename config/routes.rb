Rails.application.routes.draw do
  root to: "companies#index"
  resources :companies, only: [:index, :new, :create, :show, :destroy] do
    resources :teams, only: [:new, :create, :show, :edit, :update, :destroy]
  end
end
