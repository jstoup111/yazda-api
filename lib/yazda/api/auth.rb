require 'httmultiparty'

module Yazda::Api
  class Auth
    # Fetch user access token
    #
    # @param client_id
    # @param client_secret
    # @param code
    #
    # @return access_token
    def self.retrieve_access(client_id, client_secret, code)
      args = {
        client_id: client_id,
        client_secret: client_secret,
        code: code
      }

      HTTMultiParty.public_send(
        'post',
        Yazda::Api::Configuration::DEFAULT_AUTH_ENDPOINT,
        query: args
      )
    end
  end
end
