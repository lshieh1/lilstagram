class PostsController < ApplicationController
	def index
		@posts = Post.order('updated_at DESC')
	end

	def create
		@post = current_user.posts.new(post_params)
		if @post.save
			redirect_to posts_path
		else
			redirect_to new_post_path
		end
	end

	# def create_comment
	# 	@post = current_user.posts.find(params[:id])
	# 	@comment = @post.comments.new(comment_params)
	# 	if @comment.save
	# 		redirect_to post_path(@post.id)
	# 	end
	# end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def show
		@post = Post.find(params[:id])
		@user = current_user.id
		@comments = @post.comments
		@comment = Comment.new(user_id: @user)
		@comment.post_id = @post.id
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to post_path(@post.id)
		else
			redirect_to edit_post_path(@post.id)
		end
	end

	def destroy
		Post.destroy(params['id'])
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:image, :user_id, :caption)
	end


end
