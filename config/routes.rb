Blog::Application.routes.draw do
  
  resources :posts do
    resources :comments
    resources :categories
  end
  
  
  root 'posts#index'
end
