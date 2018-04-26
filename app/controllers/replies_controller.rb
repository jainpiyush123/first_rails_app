class RepliesController < ApplicationController


	def create 
		logger.debug "Testinggggggggg"
		# @post = Post.find(params[:post_id])
		# @comment = @post.comments.create(params[:comment].permit(:name, :body))
		# redirect_to post_path(@post)

		@comment = Comment.find(params[:comment_id])
		@reply = @comment.replies.create(params[:reply]).permit(:body)
		redirect_to root_path
	end

end
