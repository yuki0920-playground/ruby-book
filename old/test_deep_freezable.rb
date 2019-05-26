require 'minitest/autorun'
require './lib/team'
require './lib/bank'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # TeamクラスのCOUNTRIESが想定の配列か
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    # 配列としてfreezeされているか
    assert Team::COUNTRIES.frozen?
    # 要素がfreezeされているか
    assert Team::COUNTRIES.all?{ |country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    # BankクラスのCURRENCIESは想定のハッシュか
    assert_equal({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'}, Bank::CURRENCIES)
    # ハッシュとしてfreezeされているか
    assert Bank::CURRENCIES.frozen?
    # キーと値がfreezeされているか
    assert Bank::CURRENCIES.all?{ |key,value| key.frozen? && value.frozen? }
  end
end
