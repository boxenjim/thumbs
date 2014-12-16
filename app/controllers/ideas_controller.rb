class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def create
    Idea.create(permitted_params)
    redirect_to action: :index
  end

  def show
    @idea = Idea.find(params[:id])
    @comments = @idea.comments
  end

  def thumbsup
    idea = Idea.find(params[:id])
    idea.increment(:votes)
    if idea.save
      render json: idea
    end
  end

  private

    def permitted_params
      params.require(:idea).permit(:description, :votes)
    end

end
