# frozen_string_literal: true

# This is the Object that contains the information from the GraphQL query.
class Repo
  attr_reader :name, :dominant_language
  def initialize(name:, languages:)
    @name = name
    @languages = languages
    @dominant_language = calc_dominant_language
  end

  def self.favourite_by_repos(repos)
    dominant_language = Hash.new(0)
    repos.each do |repo|
      dominant_language[repo.dominant_language] += 1
    end
    find_highest_value(dominant_language)
  end

  def self.find_highest_value(hash)
    hash.each { |k, v| return k if v == hash.values.max }
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
