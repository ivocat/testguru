class Test < ApplicationRecord
  def self.list_tests_by_category(category_name)
    Test.where(category_id: Category.find_by(name: category_name).id).order(title: :desc).to_a
  end
end
