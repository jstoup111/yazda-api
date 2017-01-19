require 'logger'
require 'yazda/api/resources/account'
require 'yazda/api/resources/adventures'
require 'yazda/api/resources/clubs'
require 'yazda/api/resources/friendships'
require 'yazda/api/resources/invites'
require 'yazda/api/resources/locations'
require 'yazda/api/resources/users'

module Yazda::Api

  class Client

    include Account
    include Adventures
    include Clubs
    include Friendships
    include Invites
    include Locations
    include Users

    # Define the same set of accessors as the Awesome module
    attr_accessor *Configuration::VALID_CONFIG_KEYS

    def initialize(options={})
      # Merge the config values from the module and those passed
      # to the client.
      merged_options = Yazda::Api.options.merge(options)

      # Copy the merged values to this client and ignore those
      # not part of our configuration
      Configuration::VALID_CONFIG_KEYS.each do |key|
        send("#{key}=", merged_options[key])
      end

      @logger = options[:logger] || Logger.new(STDOUT)
      @logger.debug "Access Token: #{self.access_token}"
    end

  end # Client
end
