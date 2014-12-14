class StockAudit
  include ActiveModel::Validations
  #include ActiveModel::AttributeMethods

  attr_accessor :rate, :amount, :market

  def initialize(options = {})
    @rate         = options[:rate] || 0.0
    @amount       = options[:amount] || 0
    @market_grade = options[:market] || 0
  end

  #attribute_method_suffix '?'
  #attribute_method_preffix 'reset_'

  #define_attribute_methods [:rate]

  #def attribute?(attribute)
    #send(attribute).present?
  #end

  #def reset_attibute?(attribute)
    #send("#{attribute}=", 0)
  #end

  validate :check

  def check
    rate_high? &&
      amount_enough? &&
      market_good?
  end

  def rate_high?
    unless rate > 0.2
      errors.add(:rate, 'is so low!')
      false
    else
      true
    end
  end

  def amount_enough?
    unless amount > 100
      errors.add(:amount, 'is so small!')
      false
    else
      true
    end
  end

  def market_good?
    unless market_grade > 30
      errors.add(:market_grade, 'is not very well')
      false
    else
      true
    end
  end
end
