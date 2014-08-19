class ScoresController < ApplicationController

  def create
    @score = Score.new(points: params["score"])
    current_user.scores << @score
    if @score.save
      render json: @score
    end
  end

  private

    def score_params
      params.require(:score).permit(:points)
    end

end