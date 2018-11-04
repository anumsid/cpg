Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'formats/new'
      get 'formats/create'
      get 'formats/update'
      get 'formats/edit'
      get 'formats/destroy'
      get 'formats/index'
      get 'formats/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'books/new'
      get 'books/create'
      get 'books/update'
      get 'books/edit'
      get 'books/destroy'
      get 'books/index'
      get 'books/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'authors/new'
      get 'authors/create'
      get 'authors/update'
      get 'authors/edit'
      get 'authors/destroy'
      get 'authors/index'
      get 'authors/show'
    end
  end
  namespace :api do
    get 'v1/authors'
    get 'v1/new'
    get 'v1/create'
    get 'v1/update'
    get 'v1/edit'
    get 'v1/destroy'
    get 'v1/index'
    get 'v1/show'
  end
  get 'authors/new'
  post 'authors/create'
  put 'authors/update'
  get 'authors/edit'
  delete 'authors/destroy'
  get 'authors/index'
  get 'authors/show'
  get 'formats/new'
  post 'formats/create'
  get 'formats/update'
  get 'formats/edit'
  delete 'formats/destroy'
  get 'formats/index'
  get 'formats/show'
  get 'books/new'
  post 'books/create'
  put 'books/update'
  get 'books/edit'
  delete 'books/destroy'
  get 'books/index'
  get 'books/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
