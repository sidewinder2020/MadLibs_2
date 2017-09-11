Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :users, only: [:new, :create, :show] do
    resources :stories
  end
  get "/all_stories", to: 'stories#all_stories', as: 'all_stories'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
