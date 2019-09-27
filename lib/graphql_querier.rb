# frozen_string_literal: true

require 'gh_lang_finder_module.rb'

# this class uses a graphql library to send a query to github.
class GraphQLQuerier
  include GHLangFinder
  def send_graphql_query(username, graphql_library: GHLangFinder::Client)
    @response = graphql_library.query(GHLangBreakdown, variables: { login: username })
  end

  def map_response(response = @response)
    repos = response.data.user.repositories.nodes.map do |repo|
      repo
    end
  end
end
