class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_one :library

  has_one :library do
    link(:related) { library_path(object.id) }
  end
end
