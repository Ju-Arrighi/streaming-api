class MovieSeasonController < ApplicationController
  def index
      @movies = Movie.all
      @seasons = Season.all
      @combined_data = @movies + @seasons
      render json: @combined_data
  end
end
