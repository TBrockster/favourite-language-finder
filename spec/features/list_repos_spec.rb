# frozen_string_literal: true

describe 'Listing Repos' do
  it 'returns a list of the repos, along with their dominant language' do
    expect(formatted_response.list_repos).to be_a Hash
  end
end
