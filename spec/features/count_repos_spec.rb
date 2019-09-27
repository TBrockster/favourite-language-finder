# frozen_string_literal: true

describe 'Counting Repos' do
  it 'returns a count of the repos of a given github user' do
    expect(get_response.count_repos).to eq 35
  end
end
