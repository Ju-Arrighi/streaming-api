class MoviesSeasonsSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :number

  # meta do
  #   @movies = Movies.all
  #   { streaming: 'Movie'}
  # end
end
