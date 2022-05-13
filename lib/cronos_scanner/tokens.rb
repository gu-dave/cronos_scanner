# frozen_string_literal: true

module CronosScanner
  class Tokens
    class << self
      DEFAULT_HASH = { module: 'token' }.freeze

      def getToken(contractaddress)
        hash = DEFAULT_HASH.merge(action: 'getToken', contractaddress: contractaddress)

        Request.get hash
      end

      def getTokenHolders(contractaddress)
        hash = DEFAULT_HASH.merge(action: 'getTokenHolders', contractaddress: contractaddress)

        Request.get hash
      end
    end
  end
end
