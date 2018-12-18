class Robot
  attr_reader :name, :collection

  def self.forget
    @@collection = nil
  end

  def name
    @name ||= random_name
  end

  def reset
    @name = nil
  end

  private

  attr_writer :name

  def random_name
    collection.pop
  end

  def collection
    @@collection ||= ('AA000'..'ZZ999').to_a.shuffle
  end
end
