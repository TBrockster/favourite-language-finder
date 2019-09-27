# frozen_string_literal: true

require 'graphql_querier'

describe 'integration test' do
  it 'works for user TBrockster on the command line' do
    my_graphql_querier = GraphQLQuerier.new
    my_graphql_querier.send_graphql_query('TBrockster')
    expect(my_graphql_querier.map_response).to be_an Array
  end
end
