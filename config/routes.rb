Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :languages, only: %i(index new show create post)
      resources :products, only: %i(index new show create post)
      resources :admin_users, only: :create
      post '/login/', to: 'login#post'
      post '/authenticate', to: 'authenticate#post'
    end
  end
end
