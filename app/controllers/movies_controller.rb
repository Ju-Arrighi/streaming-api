class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order(created_at: :desc)

    render json: @movies
  end
end
