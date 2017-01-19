module Yazda
  module Api
    module Configuration
      VALID_CONNECTION_KEYS = [:endpoint, :user_agent, :method].freeze
      VALID_OPTIONS_KEYS    = [:access_token].freeze
      VALID_CONFIG_KEYS     = VALID_CONNECTION_KEYS + VALID_OPTIONS_KEYS

      DEFAULT_ENDPOINT      = 'https://api.yazdaapp.com/'
      DEFAULT_AUTH_ENDPOINT = 'https://api.yazdaapp.com/oauth/token'
      DEFAULT_METHOD        = :get
      DEFAULT_USER_AGENT    = "Yazda API V1 Ruby Gem #{Yazda::Api::VERSION}".freeze

      DEFAULT_ACCESS_TOKEN = ""

      # Build accessor methods for every config options so we can do this, for example:
      #   Yazda::Api.format = :xml
      attr_accessor *VALID_CONFIG_KEYS

      # Make sure we have the default values set when we get 'extended'
      def self.extended(base)
        base.reset
      end

      def reset
        self.endpoint   = DEFAULT_ENDPOINT
        self.method     = DEFAULT_METHOD
        self.user_agent = DEFAULT_USER_AGENT

        self.access_token = DEFAULT_ACCESS_TOKEN
      end

      def configure
        yield self
      end

      def options
        Hash[* VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten]
      end
    end
  end
end
