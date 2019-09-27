# frozen_string_literal: true

require 'graphql_querier'

describe GraphQLQuerier do
  subject(:graphql_querier) { described_class.new }
  let(:fake_graphql_library) { double :fake_graphql_library }
  let(:fake_response) { double :fake_response }

  describe '#send_graphql_query' do
    it 'input double receives the .query method' do
      expect(fake_graphql_library).to receive(:query)
      graphql_querier.send_graphql_query('TBrockster', graphql_library: fake_graphql_library)
    end
  end

  describe '#map_response' do
    it 'maps over the response' do
      graphql_querier.send_graphql_query('TBrockster')
      expect(graphql_querier.map_response).to be_an Array
    end
  end
end
