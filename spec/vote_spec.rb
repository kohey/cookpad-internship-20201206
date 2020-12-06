require_relative '../lib/vote.rb'

RSpec.describe Vote do
  it 'has a name and candidates' do
    vote = Vote.new('Awesome name', ['Alice', 'Bob'])

    expect(vote.name).to eq 'Awesome name'
    expect(vote.candidates).to eq ['Alice', 'Bob']
  end
end
