Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/top'
  get 'about' => 'homes#about'
  get 'unsubscribe' => 'customers#unsubscribe'
  get 'withdraw' => 'customers#withdraw'
  get 'destroy_all' => 'cart_item#destroy_all'
  get 'confilm' => 'orders#confilm'
  get 'complete' => 'orders#complete'
  namespace :admin do
    resources :items, only:[:index, :new, :show, :edit]
  end  
  namespace :admin do
    resources :seesions, only:[:new]
  end
  namespace :admin do
    resources :homes, only:[:top]
  end  
  namespace :admin do
    resources :genres, only:[:index, :edit]
  end
  namespace :admin do
    resources :customers, only:[:index, :show, :edit]
  end
  namespace :admin do
    resources :orders, only:[:show]
  end  
  resources :items, only:[:index, :show]
  resources :registrations, only:[:new, :create]
  resources :sessions, only:[:new, :create, :destroy]
  resources :customers, only:[:show, :edit, :update]
  resources :cart_items, only:[:index, :update, :create, :destroy]
  resources :orders, only:[:new, :index, :show, :create]
  resources :addresses, only:[:index, :edit, :create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
