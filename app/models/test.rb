class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  has_many :questions
  has_many :users, through: :test_progresses

  def self.by_category(category_name)
    joins(:category)
      .where(categories: { name: category_name })
      .order(title: :desc).pluck(:title)
  end
end
