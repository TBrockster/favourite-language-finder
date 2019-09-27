# frozen_string_literal: true

describe 'Counting Dominant Language' do
  it 'returns a count of how many repos each language is dominant in' do
    expect(formatted_response.count_dominant_language).to be_a Hash
    expect(formatted_response.count_dominant_language['Ruby']).to be > 1
  end
end
