class CommentsController < ApplicationController
	def create
		find_article
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	def destroy
		find_article
		@comment = @article.comments.find(params[:id])
		@comments.destroy
		redirect_to article_path(@article)
	end

	def find_article
		@article = Article.find(params[:article_id])
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
