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

    if diff.nonzero?
      "That's #{diff} short of your personal best!"
    else
      "That's your personal best!"
    end
  end
end