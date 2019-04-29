class Tournament
  HEADER = "Team                           | MP |  W |  D |  L |  P\n"
  ANTONYM = { 'win' => 'loss', 'draw' => 'draw', 'loss' => 'win' }

  attr_reader :scoreboard

  def self.tally(input)
    matches = input.split("\n")
    tournament = new(matches)

    tournament.build_tally
  end

  def initialize(matches)
    @matches = matches
    @scoreboard = scoreboard_hash

    store_result
  end

  def build_tally
    teams_result = ordered_scoreboard.map { |team, score| build_tally_line(team, score) }.join

    "#{HEADER}#{teams_result}"
  end

  private

  # Initialize a hash containing a hash with 0 as default value
  # { 'team' => { 'win' => 0 } }
  def scoreboard_hash
    Hash.new { |h, k| h[k] = Hash.new(0) }
  end

  def store_result
    @matches.each do |match_line|
      first_team, second_team, match_result = match_line.split(';')

      scoreboard[first_team][match_result] += 1
      scoreboard[second_team][ANTONYM[match_result]] += 1
    end
  end

  def build_tally_line(team, score)
    matches_played = score.values.sum
    wins = score['win']
    draws = score['draw']
    losses = score['loss']
    points = points(score)

    format(
      "%-30s |%3s |%3s |%3s |%3s |%3s\n",
      team, matches_played, wins, draws, losses, points
    )
  end

  def ordered_scoreboard
    scoreboard.sort_by { |team, score| [-points(score), team] }
  end

  def points(score)
    3 * score['win'] + score['draw']
  end
end
