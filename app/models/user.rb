class User < ApplicationRecord
  has_many :test_progresses
  has_many :tests, through: :test_progresses

  validates :name, presence: true
  validates :email, presence: true
  validates :is_admin, :inclusion => { :in => [true, false] }

  def tests_with_level(level)
    tests.where(level: level)
  end
end
