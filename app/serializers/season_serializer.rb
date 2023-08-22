class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number

  meta do
    { product_type: 'Season' }
  end
end
