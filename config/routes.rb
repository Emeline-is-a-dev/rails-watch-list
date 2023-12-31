Rails.application.routes.draw do
  # get 'bookmarks/index'
  # get 'bookmarks/new'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  resources :lists, only: [:new, :index, :show, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
