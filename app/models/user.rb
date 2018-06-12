class User < ApplicationRecord
  has_many :tests, through: :test_progresses

  def tests_with_level(level)
    TestProgress.joins(:test)
    .where(user_id: id, tests: { level: level })
  end
end
