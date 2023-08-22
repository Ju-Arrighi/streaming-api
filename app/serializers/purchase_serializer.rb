class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :product_type, :quality, :price, :status
end
