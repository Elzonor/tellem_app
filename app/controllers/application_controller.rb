class ApplicationController < ActionController::Base
	
	protect_from_forgery with: :exception
	
	before_action :set_locale
 
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end
	
	def sort_by(option)
		return @posts.all if option == "Newest"
		return @posts.all.reverse if option == "Oldest"
	end
	
end
