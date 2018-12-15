require 'set'

# help me

class Robot
  attr_reader :name

  def initialize(generator = NameGenerator, name_cache = MemoizedNames)
    self.generator = generator
    self.name_cache = name_cache
  end

  def name
    @name ||= random_name
  end

  def reset
    @name = nil
  end

  def self.forget; end

  private

  attr_writer :name
  attr_accessor :generator, :name_cache

  def random_name
    name = generator.generate_name

    name = generator.generate_name until name_cache.add(name)

    name
  end
end

class MemoizedNames
  def self.add(name)
    collection.add?(name)
  end

  private

  def self.collection
    @@collection ||= Set.new
  end
end

class NameGenerator
  def self.generate_name
    ('A'..'Z').to_a.sample(2).join + rand.to_s[2, 3]
  end
end
