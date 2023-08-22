class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :product_type, :quality, :price, :status
  # scope :activated, -> { where(status: 1) }
  # scope :by_status, -> { where(status: 1) }
  # scope :activated do
  #   attributes status: 1
  # end
  # scope :activated, -> { where(status: 1) }
end
