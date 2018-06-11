class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :users, through: test_progresses

  def self.by_category(category_name)
    Test.joins("JOIN categories
      ON categories.id = tests.category_id")
      .where(categories: { name: category_name })
      .order(title: :desc).pluck(:title)
  end
end
