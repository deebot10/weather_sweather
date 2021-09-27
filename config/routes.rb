Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :forecast, only: [:index]
      resources :backgrounds, only: [:index] 
      resources :users, only: [:create]
      resources :sessions
      resources 'book_search', :path => 'book-search'
      # get '/booksearch', to: 'book-search#index' 
    end
  end
end
