#Rails.application.routes.draw do
# get 'welcome/index'
#  
  Blog::Application.routes.draw do
    
    resources :articles do
      resources :comments
    end
    
    root 'welcome#index'
    
end