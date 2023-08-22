class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot

  meta do
    { product_type: 'Movie' }
  end
end
