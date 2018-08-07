class PostsController < ApplicationController

	def index
		@posts = Post.all.order("created_at desc")
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@event_create = @post.history_events.new(post_id: @post.id, event_type_id: 1)
 		if @post.save && @event_create
 			redirect_to(@post)
 		else
 			render :new
 		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@event_update = @post.history_events.new(post_id: @post.id, event_type_id: 2)
		if @post.update(post_params) && @event_update
			redirect_to(@post)
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
			params.require(:post).permit(:title, :abstract, :quote, :body)
		end

end
