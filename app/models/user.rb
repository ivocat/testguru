class User < ApplicationRecord
  def tests_with_level(level)
    TestProgress.joins("JOIN tests ON tests.id = test_progresses.test_id")
    .where(user_id: id, tests: { level: level })
    # .where("user_id = ? AND status != 'None' AND level = ?", self.id, level)
  end
end
