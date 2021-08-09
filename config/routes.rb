Rails.application.routes.draw do
  devise_for :users
  root to: "home#homepage"

  get 'homepage', to: 'home#homepage'
end
