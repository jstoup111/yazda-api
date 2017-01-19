require 'yazda/api/resources/base'

module Yazda::Api
  module Account
    include Common

    # Fetch information about a specific adventure
    #
    # See {http://Yazda.github.io/api/adventures/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activity json (see http://Yazda.github.io/api/activities/)
    def me(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("account", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def update_profile_image(args = {}, options = {}, &block)
      api_call("account/update_profile_image", args, 'post', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def update_banner_image(id, args = {}, options = {}, &block)
      api_call("account/update_banner_image", args, 'post', options, &block)git
    end
  end
end
