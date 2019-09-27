# frozen_string_literal: true

require 'gh_lang_finder_wrapper'

describe GHLangFinderWrapper do
  subject(:gh_lang_finder_wrapper) { described_class.new }
  let(:fake_query) { double :fake_query }
  describe '.wrap_graphql_query' do
    it 'creates a response object' do
      response = GHLangFinderWrapper.wrap_graphql_query(fake_query)
      expect(response).to be_a GHLangFinderWrapper
    end
  end
end
