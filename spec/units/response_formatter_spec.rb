# frozen_string_literal: true

require 'response_formatter'

describe ResponseFormatter do
  let(:fake_response) { double :fake_response, count_repos: 5 }
  subject(:response_formatter) { described_class.new(fake_response) }
  describe '#count_repos' do
    it 'returns a count of repos in response array' do
      expect(fake_response).to receive(:count)
      response_formatter.count_repos
    end
  end
end
