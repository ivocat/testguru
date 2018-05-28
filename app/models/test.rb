class Test < ApplicationRecord
  def self.list_tests_by_category(category_name)
    tests.where(category_id: categories.find_by(name: category_name).id).order(title: :desc)
  end
end
