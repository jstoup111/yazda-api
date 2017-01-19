require 'yazda/api/resources/base'

module Yazda::Api
  module Users
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
    def user(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("users/#{id}", args, 'get', options, &block)
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
    def users(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('users/', args, 'get', options, &block)
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
    def search(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('users/', args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def user_avatar(id, args = {}, options = {}, &block)
      api_call("users/#{id}/avatar", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def user_banner(id, args = {}, options = {}, &block)
      api_call("users/#{id}/banner", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def user_friends(id, args = {}, options = {}, &block)
      api_call("users/#{id}/friends", args, 'get', options, &block)
    end
  end
end
