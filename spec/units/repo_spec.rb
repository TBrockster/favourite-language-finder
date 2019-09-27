# frozen_string_literal: true

require 'repo'

describe Repo do
  before(:each) do
    @languages = { Ruby: 1, JavaScript: 2 }
  end
  it 'stores a name attribute, and makes it readable' do
    expect(Repo.new(name: 'Fred', languages: @languages).name).to eq 'Fred'
  end
  describe '#dominant_language' do
    it 'calculates and stores the language with the most bytes' do
      expect(Repo.new(name: 'Fred', languages: @languages).dominant_language).to eq :JavaScript
    end
  end
end
