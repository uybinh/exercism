class Clock
  attr_reader :value

  def initialize(hour: 0, minute: 0)
    @value = hour * 60 + minute
  end

  def method_missing(method, *args, &block)
    if method.to_s =~ /^(\+|-)$/
      @value = @value.send(method.to_s, args[0].value)
      self
    else
      super
    end
  end

  def respond_to_missing?(method, *args, &block)
    method.to_s =~ /^(\+|-)$/
  end

  def to_s
    "%02d:%02d" % [hour, minute]
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def hour
    @value / 60 % 24
  end

  def minute
    @value % 60
  end
end
