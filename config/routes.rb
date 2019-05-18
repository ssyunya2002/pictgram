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


end