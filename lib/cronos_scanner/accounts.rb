# frozen_string_literal: true

module CronosScanner
  class Accounts
    class << self
      DEFAULT_HASH = { module: 'account' }.freeze

      def txlistinternal(address)
        hash = DEFAULT_HASH.merge(action: 'txlistinternal', address: address)

        Request.get hash
      end
    end
  end
end
