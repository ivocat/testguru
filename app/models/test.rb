class Test < ApplicationRecord
  def self.by_category(category_name)
    Test.joins("JOIN categories
      ON categories.id = tests.category_id")
      .where(categories: { name: category_name })
      .order(title: :desc).pluck(:title)
  end
end
