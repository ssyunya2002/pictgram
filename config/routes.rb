Rails.application.routes.draw do

  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  
  get    '/topics/index',   to: 'topics#index'
  resources :topics
  #resourcesだけだとtopics/indexの/indexが/:idと見なされてshowアクションに繋がってしまうのでその前にルーティングを設定

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get 'comments/index'
  post '/comments', to: 'comments#create'
  resources :comments
end