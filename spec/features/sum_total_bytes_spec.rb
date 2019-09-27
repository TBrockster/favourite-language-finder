# frozen_string_literal: true

describe 'Summing Total Bytes' do
  it 'returns a count of the repos of a given github user' do
    expect(get_response.sum_total_bytes).to be_a Hash
    expect(get_response.sum_total_bytes["Ruby"]).to be >1
  end
end
