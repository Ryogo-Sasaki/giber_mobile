Rails.application.routes.draw do
    root to: 'static_pages#top'
    resources :users, only: %i[new create]
    resources :user_sessions, only: %i[new create destroy]
    get '/login', to: 'user_sessions#new'
    post '/login', to: 'user_sessions#create'
    post '/logout', to: 'user_sessions#destroy'
    resources :boards, only: %i[index new create]
    resources :messages
end
