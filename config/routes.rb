Rails.application.routes.draw do
  devise_for :users

  resources :docs
  
  authenticated :user do
    root to: 'docs#index', as: 'authenticated_root'
  end
  
  root to: 'welcome#index'
end
