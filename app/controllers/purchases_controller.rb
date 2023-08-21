class PurchasesController < ApplicationController
  # has_scope :by_product_type, only: :index

  def index
    @purchases = Purchase.all

    render json: @purchases
  end
end
