class User < ApplicationRecord
  def list_tests_with_level(level)
    self_id = self.id
    TestProgress.joins("JOIN tests ON tests.id = test_progresses.test_id")
    .where("user_id = ? AND status != 'None' AND level = ?", self_id, level)
  end
end
