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
		@new_post = Post.create
		if
			@new_post.save
			puts "-------- Hello! --------"
			redirect_to action: "index"
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
