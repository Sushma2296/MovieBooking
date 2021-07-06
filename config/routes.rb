Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/superadmin", as: "rails_admin"
  devise_for :users

  namespace :admin do
    root "screens#index"
    resources :screens, :shows, :bookings
  end

  resources :theatres, only: [:index, :show] do
    resources :shows, only: [:index, :show] do
      resources :bookings
    end
  end
  post "search", to: "theatres#search", as: "search"
end
