class MovieSeasonController < ApplicationController
  def index
    @movies = Movie.all.order(created_at: :desc)
    @seasons = Season.all.order(created_at: :desc)

    @combined_data = @movies + @seasons
    # Cache-control
    expires_in 30.seconds, public: true
    render json: @combined_data
  end
end
