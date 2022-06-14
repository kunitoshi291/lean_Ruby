require 'minitest/autorun'
require_relative '../lib/rainbowable'

class RainbowableTest < Minitest::Test
  def setup
    # StringやArrayクラスではなく、ObjectクラスにはRainbowableモジュールをincludeする
    Object.include Rainbowable
  end

  def test_rainbow
    # ハッシュや範囲オブジェクトなど、任意のオブジェクトに対してrainbowメソッドを呼び出す
    puts ({foo: 123, bar: 456}.rainbow)
    puts (10..20).rainbow
    puts true.rainbow
    puts false.rainbow
  end
end
