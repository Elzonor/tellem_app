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
			@new_post.save(post_params)
			redirect_to action: "index"
		else
			render "new"
		end
	end
	
	def edit
		@post = Post.find(params[:id])
		render :edit
	end
	
	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to posts_path
		else
			render :edit
		end
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	private
	def post_params
		params.require(:post_title).permit(:post_quote, :post_body)
	end

end
