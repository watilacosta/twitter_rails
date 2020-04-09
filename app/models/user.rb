class User < ApplicationRecord
  has_secure_password
  has_many :tweets, dependent: :destroy

  validates :password, length: {in: 86..100}, allow_nil: true, allow_blank: false
  validates :name, :email, length: {in: 1..200}, presence: true

  acts_as_voter      # pode dar like
  acts_as_followable # pode ser seguido
  acts_as_follower   # pode seguir
end
