  Blog::Application.routes.draw do
    
  devise_for :users
    resources :articles do
      resources :comments
    end
    
    root 'articles#index'
    get "about" => "welcome#about"
    
end