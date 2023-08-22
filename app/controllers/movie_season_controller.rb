class MovieSeasonController < ApplicationController
  def index
    @movies = Movie.all.order(created_at: :desc)
    @seasons = Season.all.order(created_at: :desc)

    @combined_data = @movies + @seasons

    render json: @combined_data
  end
end
