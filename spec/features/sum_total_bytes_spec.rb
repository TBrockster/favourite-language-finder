# frozen_string_literal: true

describe 'Summing Total Bytes' do
  it 'returns a count of the repos of a given github user' do
    expect(formatted_response.sum_total_bytes).to eq :JavaScript
  end
end
