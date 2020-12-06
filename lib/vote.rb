class Vote
  attr_reader :name, :candidates
  def initialize(name, candidates)
    @name = name
    @candidates = candidates
  end

  def name
    'Awesome name'
  end

  def candidates
    ['Alice', 'Bob']
  end
end