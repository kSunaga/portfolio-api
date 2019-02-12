Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :languages, only: %i(index new create post)
      resources :products, only: %i(index new create post)
    end
  end
end
