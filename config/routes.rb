Rails.application.routes.draw do
  root "cocktails#index"
  resources :cocktails, only: [:index, :create, :new, :show] do
    resources :doses, only: [:create, :destroy]
  end
end
