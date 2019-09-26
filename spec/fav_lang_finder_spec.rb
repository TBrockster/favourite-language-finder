# frozen_string_literal: true

require 'fav_lang_finder'

describe FavLangFinder do
  describe '#find_fav_lang' do
    it { is_expected.to respond_to(:find_fav_lang).with(1).argument }
  end
end
