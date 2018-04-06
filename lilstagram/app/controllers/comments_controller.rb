class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.post_id = params[:post_id]
		@comment.user_id = current_user.id

		@comment.save

		redirect_to post_path(@comment.post)
	end

	def destroy
		Comment.destroy(params['id'])
		redirect_to post_path(params['post_id'])
	end

	private

	def comment_params
		params.require(:comment).permit(:text, :user_id, :post_id)
	end
end
