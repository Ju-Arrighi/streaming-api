class PurchasesController < ApplicationController
  # has_scope :by_product_type, only: :index
  before_action :set_purchases, only: %i[ show update destroy]

  def index
    @purchases = Purchase.all

    render json: @purchases
  end

  def show
    library_purchases = @library.purchases
    expire(library_purchases)
    # verify_expiration()
    render json: @library.purchases
  end

  def update
    purchase = Purchase.find(purchase_params[:id])

    if purchase.update(purchase_params)
      render json: @library.purchases
    else
      render json: @library.purchases.errors
    end
  end

  def expire(library_purchase)
    library_purchase.each do |purchase|
      limit = purchase.created_at
      now = Time.now
      expiration = now - limit
      if expiration >= 172_800
        purchase[:status] = 0
        purchase.save
        # binding.break
      end
    end
  end

  private

  def set_purchases
    @library = Library.find(params[:library_id])
    @library.purchases

  end

  def purchase_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end


  def verify_expiration(library)
    library.purchases.each do |purchase|
      active_purchases << purchase if purchase[:status] == 0

    end
  end
end
