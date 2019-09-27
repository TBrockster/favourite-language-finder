# frozen_string_literal: true

describe 'Counting Repos' do
  it 'returns a count of the repos of a given github user' do
    expect(formatted_response.count_repos).to be > 1
  end
end
