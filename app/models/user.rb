class User < ApplicationRecord
  def list_tests_with_level(level)
    Test.where(level: level)
  end
end
