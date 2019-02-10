Rails.application.routes.draw do
  resources :languages, only: %i(index new create post)
  resources :products, only: %i(index new create post)
end
