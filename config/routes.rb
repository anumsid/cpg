Rails.application.routes.draw do
    resources :books do
      get "report", :on => :collection, :to => "books#report"
    end
    resources :authors
    resources :formats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
