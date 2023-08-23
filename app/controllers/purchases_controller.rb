class PurchasesController < ApplicationController
  # has_scope :by_status, only: :show
  before_action :set_libraries, only: %i[ show create update destroy ]

  def index
    @purchases = Purchase.all

    render json: @purchases
  end

  def show
    library_purchases = @library.purchases
    expire(library_purchases)
    render json: @library.purchases.activated
  end

  def create
    # verify_purchase
    @library.purchases << Purchase.new(purchase_params)
    if @library.save
      render json: @library.purchases, status: :created
    else
      render json: @library.errors, status: :unprocessable_entity
    end
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

  def set_libraries
    @library = Library.find(params[:library_id])
  end

  def purchase_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end

  # Method to verify if content is already in the library
  def verify_purchase
    @library_purchases = @library.purchases.activated
    if @library_purchases.pluck(:product_id).include?(purchase_params[:product_id]) && @library_purchases.pluck(:product_type).include?(purchase_params[:product_type])
      return raise ArgumentError, "Product is already on your library!", status: :unprocessable_entity
    end
  end
end
