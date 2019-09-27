# frozen_string_literal: true

def formatted_response
  my_graphql_querier = GraphQLQuerier.new
  my_graphql_querier.send_graphql_query('TBrockster')
  response = my_graphql_querier.map_response
  ResponseFormatter.new(response)
end
