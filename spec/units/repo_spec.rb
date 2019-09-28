# frozen_string_literal: true

require 'repo'

describe Repo do
  before(:each) do
    @languages = { Ruby: 1, JavaScript: 2 }
    @other_languages = { Ruby: 10, JavaScript: 5 }
    @third_languages = { JavaScript: 1, Ruby: 2 }
  end
  it 'stores a name attribute, and makes it readable' do
    expect(Repo.new(name: 'Fred', languages: @languages, url: '').name).to eq 'Fred'
  end

  it 'stores a url attribute, and makes it readable' do
    expect(Repo.new(name: 'Fred', languages: @languages, url: 'url').url).to eq 'url'
  end

  describe '.favourite_by_repos' do
    it 'calculates the language dominant in most repos' do
      repos = [Repo.new(name: 'Fred', languages: @languages, url: ''),
               Repo.new(name: 'Fred', languages: @languages, url: ''),
               Repo.new(name: 'Fred', languages: @other_languages, url: '')]
      expect(Repo.favourite_by_repos(repos)[0]).to eq :JavaScript
    end
    it 'returns both languages with a tie' do
      repos = [Repo.new(name: 'Fred', languages: @languages, url: ''),
               Repo.new(name: 'Fred', languages: @third_languages, url: '')]
      expect(Repo.favourite_by_repos(repos)).to eq %i[JavaScript Ruby]
    end
  end

  describe '.favourite_by_total_bytes' do
    it 'calculates the language with the most total bytes' do
      repos = [Repo.new(name: 'Fred', languages: @languages, url: ''),
               Repo.new(name: 'Fred', languages: @languages, url: ''),
               Repo.new(name: 'Fred', languages: @other_languages, url: '')]
      expect(Repo.favourite_by_total_bytes(repos)[0]).to eq :Ruby
    end
  end

  describe '#dominant_language' do
    it 'calculates and stores the language with the most bytes' do
      expect(Repo.new(name: 'Fred', languages: @languages, url: '').dominant_language).to eq :JavaScript
    end
  end
end
