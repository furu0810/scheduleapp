Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #トップページのルーディング
  root to: "toppages#index"
  
  #ユーザーの新規登録URL
  get "signup", to: "users#new"
  
  #ユーザーのRESTfulなルーディング
  resources :users, only: [:show, :new, :edit, :destroy, :create, :update]
  
end
