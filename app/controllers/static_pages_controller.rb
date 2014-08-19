class StaticPagesController < ApplicationController

  def home
    scores = Score.order('points DESC').limit(5)
    @top_scores = []
    scores.each do |score|
      @top_scores << score.user.name
      @top_scores << score.points
    end
  end

  def about
    render layout: false
  end

end