class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  has_many :questions
  has_many :users, through: :test_progresses

  validates :title, presence: true
  validates :title, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  scope :level_0_to_1, -> { where(level: 0..1) }
  scope :level_2_to_4, -> { where(level: 2..4) }
  scope :level_5_and_above, -> { where(level: 5..Float::INFINITY) }
  scope :by_category, ->(category_name) {
    joins(:category)
      .where(categories: { name: category_name })
      .order(title: :desc)
  }
end
