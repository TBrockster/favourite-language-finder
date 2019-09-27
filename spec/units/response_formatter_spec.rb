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

  describe '#sum_total_bytes' do
    it 'returns a sum of bytes written for each langauge for all repos' do
      expect(fake_response).to receive(:each)
      response_formatter.sum_total_bytes
    end
  end

  describe '#count_dominant_language' do
    it 'returns a count for how many repos each language is dominant in' do
      expect(fake_response).to receive(:each)
      response_formatter.count_dominant_language
    end
  end

  describe '#list_repos' do
    it 'returns a list of repo names, with their dominant language' do
      expect(fake_response).to receive(:each)
      response_formatter.list_repos
    end
  end
end
