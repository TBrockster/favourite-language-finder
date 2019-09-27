require 'graphql_querier'

describe 'Mapping Response to Array of Repo Objects' do
  it 'maps the response into an array' do
    graphql_querier = GraphQLQuerier.new
    graphql_querier.send_graphql_query('TBrockster')
    expect(graphql_querier.map_response_to_repo).to be_an Array
    expect(graphql_querier.map_response_to_repo[0].name).to eq 'hello-world'
    expect(graphql_querier.map_response_to_repo[0].languages).to eq({})
  end
end
