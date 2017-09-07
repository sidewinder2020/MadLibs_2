class Rating < ApplicationRecord
  validates :rating, inclusion: {in: 0..5}
  
  belongs_to :user
  belongs_to :story
end
