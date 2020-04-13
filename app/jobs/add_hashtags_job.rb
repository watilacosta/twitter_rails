# frozen_string_literal: true

# AddHastag
class AddHashtagsJob < ApplicationJob
  queue_as :hashtags

  def perform(tweet)
    tweet.scan(/#\w+/).each do |hashtag|
      h = DataStore.redis.get(hashtag)
      DataStore.redis.set(hashtag, (h.present? ? h.to_i + 1 : 1))
    end
  end
end
