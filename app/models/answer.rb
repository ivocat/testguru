class Answer < ApplicationRecord
  belongs_to :question

  validates :title, presence: true
  validates :correct, :inclusion => { :in => [true, false] }

  scope :only_correct, -> { where(correct: true) }
end
