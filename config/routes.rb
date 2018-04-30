Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :posts

	root "posts#index"

	get "/posts/:id" => "posts#show"
	
	get "/new" => "posts#new"
	
	post "/create" => "posts#create"
	
	patch "/posts/:id" => "posts#update"
		
	delete "/posts/:id" => "posts#destroy"

end