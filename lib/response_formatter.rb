# frozen_string_literal: true

# this class formats the GraphQl response, for use in a cli or webapp
class ResponseFormatter
  def initialize(response)
    @response = response
  end

  def count_repos
    @response.count
  end
end
