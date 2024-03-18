Rails.application.routes.draw do
  get 'habits/show'
  resources :habits, only: [:show] do
    member do
      post :plus
      post :minus
    end
  end
end
