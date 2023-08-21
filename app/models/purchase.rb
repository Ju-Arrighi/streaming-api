class Purchase < ApplicationRecord
  belongs_to :library, optional: true
  validates :status, inclusion: { in: %w(active pending) }, presence: true
  # validate :association_must_be_allowed, if: :purchase_active

  enum status: {
    pending: 0,
    active: 1
  }
  enum product_type: {
    movie: 0,
    season: 1
  }
  enum price: {
    basic: 0,
    cinema: 1
  }
end
