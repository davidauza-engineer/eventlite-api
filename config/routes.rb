Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'api/v1/events#index'

  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
end
