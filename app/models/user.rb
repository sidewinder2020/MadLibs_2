class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true

  has_many :ratings, :dependent => :destroy
  has_many :stories, through :ratings
  has_many :user_stories, :dependent => :destroy
  has_many :stories, through :user_stories
end
