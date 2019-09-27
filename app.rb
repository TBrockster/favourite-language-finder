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
end
