# frozen_string_literal: true

# User
class User < ApplicationRecord
  mount_base64_uploader :photo, PhotoUploader
  has_secure_password
  has_many :tweets, dependent: :destroy

  validates :password,
            length: { in: 6..100 },
            allow_nil: true,
            allow_blank: false

  validates :name, :email, length: { in: 1..200 }, presence: true

  acts_as_voter      # pode dar like
  acts_as_followable # pode ser seguido
  acts_as_follower   # pode seguir

  def timeline
    timeline = tweets.map { |tweet| tweet }
    all_following.each do |user|
      timeline += user.tweets.map { |t| t }
    end
    timeline.sort_by!(&:created_at).reverse
  end
end
