class Season < ApplicationRecord
  has_many :episodes
  accepts_nested_attributes_for :episodes
end
