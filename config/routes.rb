Rails.application.routes.draw do
  get 'home', to: 'home#index'
  namespace :api, format: 'json' do
    resources :rental_spaces, only: [:index]
  end
end
