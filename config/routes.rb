Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

post '/login', to: 'login#login'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :plants, only: [:index, :show, :update, :create, :destroy]
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :destroy] do
        resources :plants, only: [:index, :show, :destroy, :create]
      end
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :plant_chats, only: [:show, :create] do
        resources :messages, only: [:index, :create, :show]
      end
    end
  end
end
