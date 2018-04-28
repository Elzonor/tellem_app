Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts
	
	root "posts#index"
	
	get "index" => "posts#index"
  
  get "new" => "posts#new"
  
  post "create" => "posts#create"
  
end