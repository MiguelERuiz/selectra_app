class Pixel < ApplicationRecord
  # VALIDATORS
  # validates
  # RELATIONS
  belongs_to :provider
  # SCOPES
  scope :with_provider, -> (provider){ where(provider: provider)}
end