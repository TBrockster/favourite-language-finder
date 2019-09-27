# frozen_string_literal: true

# this class formats the GraphQl response, for use in a cli or webapp
class ResponseFormatter
  def initialize(response)
    @response = response
  end

  def count_repos
    @response.count
  end

  def sum_total_bytes
    total_bytes = Hash.new(0)
    @response.each do |response|
      next if response.languages.total_count == 0

      response.languages.edges.each do |language|
        total_bytes[language.node.name] += language.size
      end
    end
    p total_bytes
  end
end
