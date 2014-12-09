class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def create
    Idea.create(permitted_params)
    redirect_to action: :index
  end


  private

    def permitted_params
      params.require(:idea).permit(:description)
    end

end
