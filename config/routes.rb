Rails.application.routes.draw do

  namespace :kids do
    root "book_lists#index"
    resources :book_lists
    resources :books do
      resources :reviews
    end
  end

  root "pages#home"

  devise_for :users
end
