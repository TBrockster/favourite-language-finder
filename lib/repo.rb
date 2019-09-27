# frozen_string_literal: true

# This is the Object that contains the information from the GraphQL query.
class Repo
  attr_reader :name, :languages
  def initialize(name:, languages:)
    @name = name
    @languages = languages
  end
end
