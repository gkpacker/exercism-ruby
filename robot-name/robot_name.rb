class Robot
  def self.forget
    @@names = nil
  end

  def name
    @name ||= random_name
  end

  def reset
    @name = nil
  end

  private

  def random_name
    names.pop
  end

  def names
    @@names ||= ('AA000'..'ZZ999').to_a.shuffle
  end
end
