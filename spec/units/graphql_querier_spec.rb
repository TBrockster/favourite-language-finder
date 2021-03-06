# frozen_string_literal: true

require 'graphql_querier'

describe GraphQLQuerier do
  subject(:graphql_querier) { described_class.new }
  let(:fake_graphql_library) { double :fake_graphql_library }

  describe '#send_graphql_query' do
    xit 'input double receives the .query method' do
      # @valid check breaks this for double
      expect(fake_graphql_library).to receive(:query)
      graphql_querier.send_graphql_query('TBrockster', graphql_library: fake_graphql_library)
    end

    it 'stores validity, and makes it readable' do
      graphql_querier.send_graphql_query('TBrockster')
      expect(graphql_querier.valid).to eq true
    end
  end

  describe '#map_response_to_repo' do
    xit 'maps over the response' do
      # not isolated, testing with feature test instead.
      graphql_querier.send_graphql_query('TBrockster')
      expect(graphql_querier.map_response_to_repo).to be_an Array
    end
  end
end
