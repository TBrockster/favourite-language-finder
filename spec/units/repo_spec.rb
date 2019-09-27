# frozen_string_literal: true

require 'repo'

describe Repo do
  it 'stores a name attribute, and makes it readable' do
    expect(Repo.new(name: 'Fred', languages: 'French').name).to eq 'Fred'
  end
  it 'stores a language attribute, and makes it readable' do
    expect(Repo.new(name: 'Fred', languages: 'French').languages).to eq 'French'
  end
end
