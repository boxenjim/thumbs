class Comment < ActiveRecord::Base
  belongs_to :idea
  validates :content, presence: true
  validates :idea_id, presence: true
end
