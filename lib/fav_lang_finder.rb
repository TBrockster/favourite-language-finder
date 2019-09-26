# frozen_string_literal: true

require 'gh_lang_finder_module.rb'

# this class uses a graphql library to send a query to github.
class FavLangFinder
  include GHLangFinder
  def find_fav_lang(username, graphql_library: GHLangFinder::Client)
    graphql_library.query(GHLangBreakdown, variables: { login: username })
  end
end
