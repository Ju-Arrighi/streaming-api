class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number
  has_many :episodes

  meta do
    { product_type: 'Season' }
  end
end
