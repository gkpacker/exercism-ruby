module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class FlattenArray
  def self.flatten(arr)
    arr.flatten.compact
  end
end
