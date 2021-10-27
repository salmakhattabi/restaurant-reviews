Rails.application.routes.draw do
  get 'review/new'
  get 'review/create'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
