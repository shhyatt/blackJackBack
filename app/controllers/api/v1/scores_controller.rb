class Api::V1::ScoresController < ApplicationController

  def index
    @score = Score.all
    render json: @score
  end

  def update
    @score.update(score_params)
    if @score.save
      render json: @score, status: :accepted
    else
      render json: { errors: @score.errors.full_messages }, status: :unprocessible_entity
    end
  end


  private

  def score_params
    params.require(:score).permit(:hands_played, :hands_won, :hands_lost, :hands_drawn)
  end

  def find_score
    @score = Score.find(params[:id])
  end 
end
