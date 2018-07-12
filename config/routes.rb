Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :posts, :history_events, :event_types
	
# 	resources :posts do
# 		resources :history_events
# 	end

	root "posts#index"

	get "/posts/:id" => "posts#show"
	
	get "/new" => "posts#new"
	
	post "/create" => "posts#create"
	
	patch "/posts/:id" => "posts#update"
		
	delete "/posts/:id" => "posts#destroy"
	
	get "/history_events" => "history_events#index"

	get "/event_types" => "event_types#index"

end