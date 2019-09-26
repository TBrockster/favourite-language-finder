# frozen_string_literal: true

require 'graphql/client'
require 'graphql/client/http'
require_relative '../variables.rb'

module GHLangFinder
  HTTP = GraphQL::Client::HTTP.new('https://api.github.com/graphql') do
    def headers(_context)
      { 'User-Agent': 'TBrockster',
        'Authorization': "Bearer #{GH_ACCESS_TOKEN}" }
    end
  end

  Schema = GraphQL::Client.load_schema(HTTP)

  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end

GHLangBreakdown = GHLangFinder::Client.parse <<-'GRAPHQL'
    query($login: String!) {
      user(login: $login) {
        repositories(first: 100, isFork: false) {
          nodes {
            name
            languages(first:10) {
                totalCount
                edges {
                    size
                    node {
                        name
                    }
                }
            }
          }
        }
      }
    }
GRAPHQL
