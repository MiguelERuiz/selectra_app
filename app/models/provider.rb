class Provider < ApplicationRecord

  # VALIDATORS
  validates :code, uniqueness: true, length: {minimum:3, maximum:5}
  validates :name, length: {minimum:3, maximum:20}
  validates :email, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP }

  # RELATIONS
  has_many :pixels

end
