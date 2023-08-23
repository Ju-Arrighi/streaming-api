class LibrarySerializer < ActiveModel::Serializer
  attributes :id, :user_id
  belongs_to :user
  has_many :purchases

  has_many :purchases do
    link(:related) { library_purchases_path(object.id) }
  end
end
