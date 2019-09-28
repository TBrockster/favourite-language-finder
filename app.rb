# frozen_string_literal: true

require 'sinatra/base'
Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }

# this is the web app controller class
class FavLangFinderApp < Sinatra::Base
  enable :sessions
  set :session_secret, 'MVF_Rule'
  get '/' do
    erb(:index)
  end

  get '/result' do
    graphql_queirer = GraphQLQuerier.new
    graphql_queirer.send_graphql_query(params[:username])
    if graphql_queirer.valid
      @repos = graphql_queirer.map_response_to_repo
      @language_by_repos = Repo.favourite_by_repos(@repos)
      @language_by_total_bytes = Repo.favourite_by_total_bytes(@repos)
      erb(:result)
    else
      redirect '/fail'
    end
  end

  get '/fail' do
    erb(:fail)
  end
end
