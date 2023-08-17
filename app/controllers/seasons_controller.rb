class SeasonsController < ApplicationController
  def index
    @seasons = Season.all.order(created_at: :desc)

    render json: @seasons, include: [:episodes]
  end
end
