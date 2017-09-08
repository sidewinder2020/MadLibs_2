class Story < ApplicationRecord
  has_many :ratings, :dependent => :destroy
  has_many :users, through: :ratings

  has_many :user_stories, :dependent => :destroy
  has_many :users, through: :user_stories
end
