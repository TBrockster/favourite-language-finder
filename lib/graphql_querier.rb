# frozen_string_literal: true

require_relative './gh_lang_finder_module'

# this class uses a graphql library to send a query to github.
class GraphQLQuerier
  attr_reader :valid
  include GHLangFinder
  def send_graphql_query(username, graphql_library: GHLangFinder::Client)
    @response = graphql_library.query(GHLangBreakdown,
                                      variables: { login: username })
    @valid = !@response.data.user.nil?
  end

  def map_response_to_repo(response = @response)
    response.data.user.repositories.nodes.map do |repo|
      languages = Hash.new(0)
      repo.languages.edges.each do |language|
        languages[language.node.name.to_sym] += language.size
      end
      Repo.new(name: repo.name, languages: languages, url: repo.url)
    end
  end
end
