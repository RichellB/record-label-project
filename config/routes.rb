Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :songs, only: [:new, :index, :show]
  end
  
  resources :songs
  resources :genres
  
  root to: 'application#home'
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
