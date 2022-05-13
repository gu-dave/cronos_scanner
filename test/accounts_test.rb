require_relative './test_helper'

class ScannersTest < Minitest::Test
  def setup
    CronosScanner.net = 'testnet'
    CronosScanner.apikey = 'JKXG4S4I4B4TEZKWAWXEQKQ3T9PRK9N26K'
    @deposit_address = '0x64D650aa6DbB60a3F91a34C336ffFE5F697D1794'
    
    sleep 0.5
  end

  def test_tokenlist
    res_doc = CronosScanner::Accounts.txlistinternal(@deposit_address)

    puts res_doc

    assert_equal res_doc['message'], 'OK'
    assert_equal res_doc['status'], '1'
    assert_equal res_doc['result'][0]['blockNumber'], '3190214'
  end

end
