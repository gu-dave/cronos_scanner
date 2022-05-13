require_relative './test_helper'

class ScannersTest < Minitest::Test
  def setup
    CronosScanner.net = 'testnet'
    sleep 0.5
  end

end
