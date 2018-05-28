class Test < ApplicationRecord
  def self.list_tests_by_category(category_name)
    tests.where(category: category_name).order(title: :desc)
  end
end
