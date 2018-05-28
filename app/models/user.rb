class User < ApplicationRecord
  def list_tests_with_level(level)
    tests.where(level: level)
  end
end
