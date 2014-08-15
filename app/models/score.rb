class Score < ActiveRecord::Base

  belongs_to :user

  validates :user_id, :points, presence: true
  
end