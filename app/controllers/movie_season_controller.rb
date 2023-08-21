class MovieSeasonController < ApplicationController
  def index
      @movies = Movie.all
      @seasons = Season.all
      # @combined_data = @movies + @season
      render json: @movies, meta: { streaming: 'Movie'}
  end
end
