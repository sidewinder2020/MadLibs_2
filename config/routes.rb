Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :users, only: [:new, :create, :show] do
    resources :stories, only: [:new, :create, :destroy, :edit, :update, :show]
  end
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :stories, only: [:index, :show]
end
