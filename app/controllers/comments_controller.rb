class CommentsController <ApplicationController


   
   def create
		@article = Article.find(params[:article_id])
	 	@comment = @article.comments.create(params[:comment].permit(:name, :body))
		redirect_to article_path(@article)	
	end

	def destroy  
		@article = Article.find(params[:article_id])  
		@comment = @article.comments.find(params[:id])  
		@comment.destroy   
		redirect_to article_path(@article)
	 end

# 	 def edit
# 		@article = Article.find(params[:article_id])
# 		@comment = @article.comments.find(params[:id])
# 	 end
  
# 	  def update
# 		@article = Article.find(params[:article_id])
# 		@comment = @article.comments.find(params[:id])
# 		if @comment.update(params.require(:comment).permit(:name, :body))
# 		  redirect_to post_path(@post)
# 		else
# 		  render 'edit'
# 		end
		
		
		  
#   end

	
end