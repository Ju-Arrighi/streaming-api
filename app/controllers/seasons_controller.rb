class SeasonsController < ApplicationController
  def index
    @seasons = Season.all.order(created_at: :desc)

    # Cache-control
    expires_in 30.seconds, public: true
    render json: @seasons, include: [:episodes]
  end
end
