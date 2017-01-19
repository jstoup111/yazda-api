require 'yazda/api/resources/base'

module Yazda::Api
  module Friendships
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
    def incoming_friendships(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('friendships/incoming', args, 'get', options, &block)
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
    def outgoing_friendships(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('friendships/outgoing', args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def add_friend(args = {}, options = {}, &block)
      api_call("friendships", args, 'post', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def accept_friend(id, args = {}, options = {}, &block)
      api_call("friendships/#{id}/accept", args, 'patch', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def reject_friend(id, args = {}, options = {}, &block)
      api_call("friendships/#{id}/reject", args, 'patch', options, &block)
    end
  end
end
