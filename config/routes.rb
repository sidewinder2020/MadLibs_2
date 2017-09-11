Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :users, only: [:new, :create, :show] do
    resources :stories
  end
  get "/all_stories", to: 'stories#all_stories', as: 'all_stories'
  get '/all_stories/show/:id', to: 'stories#all_stories_show', as: 'all_stories_show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
