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
		@new_post = Post.new(post_params)
		if @new_post.save
			redirect_to @posts
		else
			render new
		end
	end
	
	private
	def post_params
		params.require(:post_title).require(:post_quote).require(:post_body)
	end
	
end
