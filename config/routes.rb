Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #トップページのルーディング
  root to: "toppages#index"
  
  
  #ログイン処理のルーディング
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  #ユーザーの新規登録URL
  get "signup", to: "users#new"
  
  #ユーザーのRESTfulなルーディング
  resources :users
  
end
