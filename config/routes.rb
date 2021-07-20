Rails.application.routes.draw do

  # Rails で受けるルーティング
  # APIや画面も構築可能
  resources :users
  root to: 'home#index'



  # Rails で定義されたルーティング以外は VueRouter で受ける
  get '*path', to: 'home#index'
end
