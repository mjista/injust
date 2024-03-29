class CommentsController < ApplicationController
before_action :authenticate_user! 
	def create
		@comment =@commentable.comments.new comment_params
		
		@comment.author = current_user.username
		@comment.save
		redirect_to @commentable, notice:"votre commentaire a bien été ajouté"
	end
	private
	def comment_params
		params.require(:comment).permit(:body, :author, :user_id)
	end
end
