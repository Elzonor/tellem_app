class PostsController < ApplicationController
	
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end
	
	def new
		@new_post = Post.new
	end
	
	def create
		@new_post = Post.new
		if
			@new_post.save
			puts "-------- Hello! --------"
			render "index"
		else
			puts "-------- Meh... --------"
			render "new"
		end
	end

	private
	def post_params
		params.require(:post_title, :post_quote, :post_body)
	end

end
