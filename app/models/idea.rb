class Idea < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :description, presence: true
  validates :votes, numericality: {greater_than_or_equal_to: 0}
end
