class Story < ApplicationRecord
  has_many :ratings
  has_many :users, through :ratings
  has_many :user_stories
  has_many :users, through :user_stories
end
