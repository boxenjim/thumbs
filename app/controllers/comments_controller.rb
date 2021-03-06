class CommentsController < ApplicationController
  def create
    idea = Idea.find(params[:idea_id])
    @comment = idea.comments.build(comment_params)
    if @comment.save
      render json: @comment 
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :idea_id)
    end

end
