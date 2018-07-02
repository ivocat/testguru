class Category < ApplicationRecord
  has_many :tests

  validates :name, presence: true

  scope :sorted_by_name, -> { order(name: :asc) }
end
