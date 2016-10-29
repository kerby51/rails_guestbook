Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show]
    end
  end
  resources :users, only: [:create, :index, :show]
end