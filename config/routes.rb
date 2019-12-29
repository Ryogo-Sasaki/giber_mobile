Rails.application.routes.draw do
    root to: 'static_pages#top'
    resources :users, only: %i[new create]
    resources :user_sessions, only: %i[new create destroy]
    resources :boards
    resources :hired_works
    get '/profile', to: 'profiles#show'
    get '/login', to: 'user_sessions#new'
    post '/login', to: 'user_sessions#create'
    post '/logout', to: 'user_sessions#destroy'
    get '/privacy_policy', to: 'others#show'
    get '/giber-terms-alpha', to: 'others#index'

    get 'rooms/show', to: 'rooms#show'
    mount ActionCable.server => '/cable'
end
