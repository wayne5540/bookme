Rails.application.routes.draw do

  namespace :kids do
  get 'levels/index'
  end

  namespace :kids do
    root "book_lists#index"

    resources :categories do
      collection do
        post :add_to_kids
      end
    end
    resources :book_lists
    resources :books do
      member do
        post :add_review
        post :add_to_book_list
      end
      resources :reviews
    end

    resources :levels, only: [:index]
  end

  root "pages#home"

  devise_for :users
end
