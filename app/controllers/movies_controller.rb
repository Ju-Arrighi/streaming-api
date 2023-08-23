class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(created_at: :desc)

    # Cache-control
    expires_in 30.seconds, public: true
    render json: @movies
  end
end
