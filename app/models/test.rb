class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  has_many :questions
  has_many :users, through: :test_progresses

  validates :title, presence: true
  validates :title, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  scope :level_easy, -> { where(level: 0..1) }
  scope :level_normal, -> { where(level: 2..4) }
  scope :level_hard, -> { where(level: 5..Float::INFINITY) }
  scope :by_category, ->(category_name) {
    joins(:category)
      .where(categories: { name: category_name })
  }

  def self.titles_by_category(category_name)
    joins(:category)
      .where(categories: { name: category_name })
      .order(title: :desc).pluck(:title)
  end
end
