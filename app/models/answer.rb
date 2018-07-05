class Answer < ApplicationRecord
  ANSWERS_LIMIT = 4

  belongs_to :question, counter_cache: true

  validates :title, presence: true
  validates :correct, :inclusion => { :in => [true, false] }
  validate :answers_to_question, on: :create

  def answers_count_to_question
    if question.answers_count >= ANSWERS_LIMIT
      errors.add(:question, 'Max answer count is 4')
    end
  end

  scope :correct, -> { where(correct: true) }
end
