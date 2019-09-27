# frozen_string_literal: true

describe 'Counting Dominant Language' do
  it 'returns a count of how many repos each language is dominant in' do
    expect(formatted_response.count_dominant_language).to eq 'Ruby'
  end
end
