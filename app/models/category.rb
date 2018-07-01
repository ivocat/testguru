class Category < ApplicationRecord
  has_many :tests

  validates :name, presence: true

  scope :by_name, -> { order(name: :asc) }
end
