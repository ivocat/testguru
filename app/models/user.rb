class User < ApplicationRecord
  has_many :test_progresses
  has_many :tests, through: :test_progresses

  def tests_with_level(level)
    tests.where(level: level)
  end
end
