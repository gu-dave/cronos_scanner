require 'oj'
require 'faraday'

module CronosScanner
  class Request
    class << self
      def get(hash)
        res = connect.get do |req|
          req.url params(hash)
          req.headers['Content-Type'] = 'application/json'
        end.body

        Oj.load(res)
      end

      def post(hash)
        res = connect.post do |req, params|
          req.url params(hash)
          req.headers['Content-Type'] = 'application/json'
          req.params params
        end.body

        Oj.load(res)
      end

      def connect
        Faraday.new(url: CronosScanner.domain) do |faraday|
          faraday.request :json
          faraday.adapter Faraday.default_adapter
        end
      end

      def params(hash)
        '?' + URI.encode_www_form(hash) + "&apikey=#{CronosScanner.apikey}"
      end
    end
  end
end
