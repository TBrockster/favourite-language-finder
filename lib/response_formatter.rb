# frozen_string_literal: true

# this class formats the GraphQl response, for use in a cli or webapp
class ResponseFormatter
  def initialize(response)
    @response = response
  end

  def count_repos
    @response.count
  end

  def list_repos
    repos = {}
    @response.each do |response|
      next if response.languages.total_count.zero?

      repos[response.name.to_sym] = determine_winner(response)
    end
    repos
  end

  def sum_total_bytes
    total_bytes = Hash.new(0)
    @response.each do |response|
      next if response.languages.total_count.zero?

      response.languages.edges.each do |language|
        total_bytes[language.node.name.to_sym] += language.size
      end
    end
    find_highest_value(total_bytes)
  end

  def count_dominant_language
    total_dominant_repos = Hash.new(0)
    @response.each do |response|
      next if response.languages.total_count.zero?

      total_dominant_repos[determine_winner(response).to_sym] += 1
    end
    find_highest_value(total_dominant_repos)
  end
end

private

def determine_winner(response)
  winner_size = 0
  winner_name = ''
  response.languages.edges.each do |language|
    if language.size > winner_size
      winner_name = language.node.name
      winner_size = language.size
    end
  end
  winner_name
end

def find_highest_value(hash)
  hash.each { |k, v| return k if v == hash.values.max }
end
