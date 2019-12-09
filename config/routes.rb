Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

post '/login', to: 'login#login'
post '/users/:user_id/plant_libraries/:plant_library_id', to: 'api/v1/plant_libraries#favorite'
get  '/users/:user_id/plant_libraries', to: 'api/v1/plant_libraries#myfav'
delete '/users/:user_id/favorites/:plant_library_id', to: 'api/v1/plant_libraries#unfavorite'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # resources :plants, only: [:index, :show, :update, :create, :destroy]
      resources :plant_libraries, only: [:index, :show]
      resources :plant_chats, only: [:show, :create] do
        resources :messages, only: [:index, :create, :show]
      end
      resources :users, only: [:index, :show, :destroy] do
        resources :plants, only: [:index, :show, :destroy, :create, :update]
        resources :plant_libraries, only: [:index, :show]
      end
    end
  end

  require "sidekiq/web"
  # authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'

end
