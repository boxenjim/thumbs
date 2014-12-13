Rails.application.routes.draw do
  root 'ideas#index'
  resources :ideas, only: [:index, :show]
  resources :ideas do
    resources :comments
    member do
      post :thumbsup
    end
  end
end
