require_relative './test_helper'

class ScannersTest < Minitest::Test
  def setup
    CronosScanner.net = 'testnet'
    @vvs_contractaddress = '0x904bd5a5aac0b9d88a0d47864724218986ad4a3a'
    @tusd_contractaddress = '0x41315E63d0663Ce839931fed7451084613E385b3'
    @address = '0x0eE92A5c08480A966B2B503821c49F936686E440'

    # CronosScanner.net = 'main'
    
    @swap_txhash = '0x78fdd979c9f0f56bbe4a3f5304533549b38d908f6cd20b722831548e5aaf71d3'
    @transfer_txhash = '0x5a0e9eb192be33842750082706000f0f9d44aa6e732372484d7eacb3497baa5c'
    @blockno = '2565174'
    @timestamp = 1648184128
    @timestamp2 = 1748184128
    sleep 0.5
  end

end
