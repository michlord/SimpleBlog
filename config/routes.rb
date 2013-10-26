Blog::Application.routes.draw do
  
  resources :posts, only: [:index, :show] do
    resources :comments
    resources :categories
  end
   namespace :admin do
    resources :posts
  end
  devise_for :admins
  root 'posts#index'
  
end
