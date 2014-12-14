RedisConnector.setup

Redis.current = $redis

class Redis
  def self.sidekiq
    $redis_sidekiq
  end
end
