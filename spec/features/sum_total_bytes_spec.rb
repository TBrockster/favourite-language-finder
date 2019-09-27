# frozen_string_literal: true

describe 'Summing Total Bytes' do
  it 'returns a count of the repos of a given github user' do
    expect(formatted_response.sum_total_bytes).to be_a Hash
    expect(formatted_response.sum_total_bytes['Ruby']).to be > 1
  end
end
