class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort.reverse.first(3)
  end

  def report
    "Your latest score was #{latest}. #{feedback}"
  end

  private

  def feedback
    diff = personal_best - latest

    complement = diff.nonzero? ? "#{diff} short of " : ''

   "That's #{complement}" + "your personal best!"
  end
end
