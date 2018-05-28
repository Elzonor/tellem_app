class ApplicationController < ActionController::Base
	
	protect_from_forgery with: :exception
	
	GENERIC_TITLE = " — Anna Vairo Coach"
	
end
