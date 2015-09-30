class CommentsController < ApplicationController
 def new
   @comment = Comment.new
 end

 def create
  @comment = Comment.new(comment_params)
  @comment.user = current_user

  unless @comment.save
    flash[:notice] = "Error creating comment: #{@comment.errors}"
    redirect_to "/projects/#{@comment.project.id}"
  end

  redirect_to "/projects/#{@comment.project.id}"
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = comment.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:comment, :project_id, :user_id)
    end
 end

