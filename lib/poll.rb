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
    if vote.candidate =='INVALID'
      raise InvalidCandidateError
    end

    @votes.push(vote)
  end
end
