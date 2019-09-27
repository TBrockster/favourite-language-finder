describe 'Counting Repos' do
  it 'returns a count of the repos of a given github user' do
    my_graphql_querier = GraphQLQuerier.new
    my_graphql_querier.send_graphql_query('TBrockster')
    response = my_graphql_querier.map_response
    my_response_formatter = ResponseFormatter.new(response)
    expect(my_response_formatter.count_repos).to be 35
  end
end
