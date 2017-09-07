class User < ApplicationRecord
  has_many :ratings
  has_many :stories, through :ratings
  has_many :user_stories
  has_many :stories, through :user_stories
end
