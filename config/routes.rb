Rails.application.routes.draw do
  devise_for :users
  resources :blogs

  resources :wishes do
    member do
      patch :update_status
    end
  end

  root to: "home#homepage"
  get 'homepage', to: 'home#homepage'
end
