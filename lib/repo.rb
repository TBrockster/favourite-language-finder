# frozen_string_literal: true

# This is the Object that contains the information from the GraphQL query.
class Repo
  attr_reader :name, :dominant_language
  def initialize(name:, languages:)
    @name = name
    @languages = languages
    @dominant_language = calc_dominant_language
  end

  private

  def calc_dominant_language
    winner_size = 0
    winner_name = 'N/A'
    @languages.each do |key, value|
      if value > winner_size
        winner_name = key
        winner_size = value
      end
    end
    winner_name
  end
end
