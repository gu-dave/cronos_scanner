require_relative './test_helper'

class ScannersTest < Minitest::Test
  def setup
    CronosScanner.net = 'testnet3'
    sleep 0.5
  end

  def test_listcontracts
    res_doc = CronosScanner::Contracts.listcontracts

    # puts res_doc

    assert_equal res_doc['message'], 'OK'
  end

end
