class Robot
  @@history = Hash.new
  @@names = [*('AA000'..'ZZ999')]

  def self.forget
    @@history = Hash.new
  end

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @name = new_name
  end

  private

  def generate_name
    index = rand(@@names.length)
    @@names[index]
  end

  def new_name
    name = generate_name
    name = generate_name while @@history[name] == 1
    @@history[name] = 1
    name
  end
end