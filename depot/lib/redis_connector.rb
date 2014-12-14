class RedisConnector

  class << self
    def default
      config('default')
    end

    def sidekiq
      config('sidekiq')
    end

    def setup
      $redis = Redis.new(:url => default)
      Redis.current = $redis
      $redis_sidekiq = Redis.new(:url => sidekiq)
    end

    def config(type = 'default')
      sidekiq_config = base_config.nil? ? nil : base_config[type.to_s]
      config = sidekiq_config.nil? ? nil : sidekiq_config.symbolize_keys

      if config.nil?
        puts "#{type}不存在，请参照config/redis.yml.example 配置config/redis.yml"
        return nil
      end

      config.assert_valid_keys(:development, :production, :test)
      config[Rails.env.to_sym]
    end

    def base_config
      begin
        YAML.load_file("#{Rails.root}/config/redis.yml")
      rescue Exception => ex
        puts "Warning: 请参照config/redis.yml.example 配置 config/redis.yml"
        nil
      end
    end

  end
end
