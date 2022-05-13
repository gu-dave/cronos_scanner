# frozen_string_literal: true

module CronosScanner
  class Transactions

    class << self
      DEFAULT_HASH = { module: 'transaction' }.freeze

      def gettxreceiptstatus(txhash)
        hash = DEFAULT_HASH.merge(action: 'gettxreceiptstatus', txhash: txhash, tag: 'latest')

        Request.get hash
      end

      def gettxinfo(txhash)
        hash = DEFAULT_HASH.merge(action: 'gettxinfo', txhash: txhash)
        
        Request.get hash
      end

      def getstatus(txhash)
        hash = DEFAULT_HASH.merge(action: 'getstatus', txhash: txhash)
        
        Request.get hash
      end
    end
  end
end
