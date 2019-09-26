# frozen_string_literal: true

require 'fav_lang_finder'

describe FavLangFinder do
  subject(:fav_lang_finder) { described_class.new }
  let(:fake_graphql_library) { double :fake_graphql_library }

  describe '#find_fav_lang' do
    it { is_expected.to respond_to(:find_fav_lang).with(1).argument }
    it 'input double receives the .query method' do
      expect(fake_graphql_library).to receive(:query)
      fav_lang_finder.find_fav_lang('TBrockster', graphql_library: fake_graphql_library)
    end
  end
end
