class Purchase < ApplicationRecord
  belongs_to :library
  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }
  enum product_type: {
    movie: 0,
    season: 1
  }
end
