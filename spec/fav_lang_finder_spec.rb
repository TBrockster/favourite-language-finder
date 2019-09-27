# frozen_string_literal: true

require 'fav_lang_finder'

describe FavLangFinder do
  subject(:fav_lang_finder) { described_class.new }
  let(:fake_graphql_library) { double :fake_graphql_library }

  describe '#send_graphql_query' do
    it { is_expected.to respond_to(:send_graphql_query).with(1).argument }
    it 'input double receives the .query method' do
      expect(fake_graphql_library).to receive(:query)
      fav_lang_finder.send_graphql_query('TBrockster', graphql_library: fake_graphql_library)
    end
  end
end
