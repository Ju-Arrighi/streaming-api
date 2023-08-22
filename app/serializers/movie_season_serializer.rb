class MovieSeasonSerializer < ActiveModel::Serializer
  attributes :movies, :seasons

  def movies
    ActiveModelSerializers::SerializableResource.new(object[:movies], each_serializer: MovieSerializer)
  end

  def seasons
    ActiveModelSerializers::SerializableResource.new(object[:seasons], each_serializer: SeasonSerializer)
  end
end
