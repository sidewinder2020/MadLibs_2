class Rating < ApplicationRecord
  validates :rating, inclusion: {in: 0..5 }

  belongs_to :user_story
  belongs_to :user
end
