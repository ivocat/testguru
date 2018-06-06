class Test < ApplicationRecord
  def self.list_tests_by_category(category_name)
    Test.joins("JOIN categories
      ON categories.id = tests.category_id
      WHERE categories.name = '#{category_name}';")
      .order(title: :desc).pluck(:title)
  end
end
