class PostsController < ApplicationController

	def index
		@posts = Post.all.order("created_at desc")
	end

	def show
		@post = Post.find(params[:id])
		@post_history = @post.history_events.all.order("created_at desc")
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@event_new = @post.history_events.new(event_type_id: 1, post_id: @post.id)
 		if @post.save && @event_new.save
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
		@event_edit = @post.history_events.new(event_type_id: 2, post_id: @post.id)
		if @post.update(post_params) && @event_edit.save
			redirect_to(@post)
		else
			render :edit
		end
	end

	def trash
		@post = Post.find(params[:id])
		@post_events = HistoryEvent.where(post_id: @post.id)
		@post.event_type_id = 6
		@post_events.event_type_id = 6
	end

	def destroy
		@post = Post.find(params[:id])
		@post_events = HistoryEvent.where(post_id: @post.id)
		@post_events.each do |event|
			event.destroy
		end
		@post.destroy
		redirect_to posts_path
	end

	private
		def post_params
			params.require(:post).permit(:title, :abstract, :quote, :body)
		end

end
