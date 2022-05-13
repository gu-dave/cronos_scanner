require_relative './test_helper'

class ScannersTest < Minitest::Test
  def setup
    CronosScanner.net = 'testnet'
    @vvs_contractaddress = '0x904bd5a5aac0b9d88a0d47864724218986ad4a3a'
    @address = '0x0eE92A5c08480A966B2B503821c49F936686E440'

    sleep 0.5
  end

end
