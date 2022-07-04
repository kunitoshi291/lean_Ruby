require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effects'

class WordSynthTest < Minitest:: Test
    def test_play
        # とりあえずクラスとモジュールが参照できることを確認
        assert WordSynth
        assert Effects
    end
end