Rails.application.routes.draw do
  devise_for :admins
  root to: 'helitages#top'

  namespace :admin do
    resources :genres
    resources :newses
    resources :helitages
    resources :countries
    
  end

  namespace :user do
    get '/companies/tops' => 'companies#top', as: 'companies_top'
    get '/companies/historys' => 'companies#history', as: 'companies_history'
    get '/companies/inquiries' => 'companies#inquiry', as: 'companies_inquiry'
    get '/companies/overviews' => 'companies#overview', as: 'companies_overview'
    resources :companies

    get '/helitages/helitages' => 'helitages#helitage', as: 'helitages_helitage'
    resources :helitages
  end


end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
