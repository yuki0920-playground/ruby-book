require 'minitest/autorun'
require './api_practice/zipcode'

class SearchAddressTest < Minitest::Test
  def test_zipcode
    assert_equal '高知県南国市蛍が丘', search_address(7830060)
    assert_equal '東京都葛飾区青戸', search_address(1250062)
    assert_equal '神奈川県鎌倉市鎌倉山', search_address(2480031)
  end
end
