Rails.application.routes.draw do
  devise_for :admins
  root to: 'helitages#top'

  namespace :admin do
    resources :helitages
  end

  namespace :user do
    resources :helitages
  end


end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
