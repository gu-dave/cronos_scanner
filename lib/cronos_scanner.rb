# frozen_string_literal: true

require_relative "cronos_scanner/version"
require_relative "cronos_scanner/request"
require_relative "cronos_scanner/accounts"
require_relative "cronos_scanner/transactions"
require_relative "cronos_scanner/blocks"
require_relative "cronos_scanner/contracts"
require_relative "cronos_scanner/tokens"

module CronosScanner
  class Error < StandardError; end
  # Your code goes here...
  
  class << self
    # attr_reader :net
    attr_writer :net, :apikey
    
    def domain
      case @net
      when 'main'
        'https://api.cronoscan.com/'
      when 'testnet'
        'https://api-testnet.cronoscan.com/'
      else
        raise 'error net, only testnet and main'
      end
    end

    def apikey
      @apikey
    end
  end
end
