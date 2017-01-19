require 'yazda/api/resources/base'

module Yazda::Api
  module Locations
    include Common

    # TODO change the doc for this
    # Fetch information about the current users clubs
    #
    # See {http://Yazda.github.io/api/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activities json (see http://Yazda.github.io/api/activities/)
    def locations(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('locations/', args, 'get', options, &block)
    end

    # Fetch information about the current users clubs
    #
    # See {http://Yazda.github.io/api/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activities json (see http://Yazda.github.io/api/activities/)
    def create_location(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('locations/', args, 'post', options, &block)
    end
  end
end
