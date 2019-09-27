class ResponseFormatter
  def initialize(response)
    @response = response
  end

  def count_repos
    @response.count
  end
end