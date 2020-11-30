class Pixel < ApplicationRecord
  # VALIDATORS
  validates :url, length: { maximum: 2000 }
  # RELATIONS
  belongs_to :provider
end
