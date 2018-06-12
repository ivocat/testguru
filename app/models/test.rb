class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :questions
  has_many :users, through: :test_progresses

  def self.by_category(category_name)
    joins(:category)
      .where(categories: { name: category_name })
      .order(title: :desc).pluck(:title)
  end
end
