Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :readings, only: [:create, :show]
      resources :thermostats, only: [] do
        get :stats, on: :member
      end
    end
  end
end
