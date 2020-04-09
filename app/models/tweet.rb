class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet_original, class_name: 'Tweet', optional: true
  has_many :retweets, class_name: 'Tweet', foreign_key: 'tweet_original_id'

  validates :body, length: {in: 1..2000}, presence: true
  validates_presence_of :user

  acts_as_votable # pode receber likes
end
