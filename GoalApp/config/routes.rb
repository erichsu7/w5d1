Rails.application.routes.draw do

  resources :users, except: [:index] do
    resources :goals, only: [:show]
  end
  resource :session, only: [:new, :create, :destroy]
  resources :goals, except: [:show]

  root "goals#index"
end
