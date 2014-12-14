module RedisKeys
  class << self
    def product_new
      'product_new'
    end

    def [](type)
      send(type.to_sym)
    end
  end
end
