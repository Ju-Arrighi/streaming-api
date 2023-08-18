class Purchase < ApplicationRecord
  belongs_to :library, optional: true

  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }
  enum product_type: {
    movie: 0,
    season: 1
  }
  enum price: {
    basic: 0,
    cinema: 1
  }
  enum quality: {
    hd: 0,
    sd: 1
  }
end
