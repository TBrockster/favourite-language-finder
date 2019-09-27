# frozen_string_literal: true

require 'gh_lang_finder_wrapper'

describe GHLangFinderWrapper do
  it { is_expected.to respond_to(:wrap_graphql_query).with(1).argument }
end
