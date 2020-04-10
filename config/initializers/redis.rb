# frozen_string_literal: true

require 'redis'

module DataStore
  def self.redis
    # @redis ||= Redis.new(url: 'redis://redis:6379/0')
    @redis ||= Redis.new(host: 'localhost')
  end
end
