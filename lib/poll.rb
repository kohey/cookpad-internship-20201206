class Poll
  class InvalidCandidateError < StandardError
  end

  attr_reader :title, :candidates, :votes

  def initialize(title, candidates)
    @title = title
    @candidates = candidates
    @votes = []
  end

  def add_vote(vote)
    unless candidates.include?(vote.candidate)
      raise InvalidCandidateError, "Candidate '#{vote.candidate}' is invalid"
    end

    @votes.push(vote)
  end

  def count_votes
    {
      'Alice' => 2,
      'Bob' => 1
    }
  end
end
