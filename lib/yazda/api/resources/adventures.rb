require 'yazda/api/resources/base'

module Yazda::Api
  module Adventures
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
    def adventure(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("adventures/#{id}", args, 'get', options, &block)
    end

    # Fetch information about the current users adventures
    #
    # See {http://Yazda.github.io/api/adventures/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activities json (see http://Yazda.github.io/api/activities/)
    def adventures(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('adventures', args, 'get', options, &block)
    end

    # Updates an adventure
    # See {http://Yazda.github.io/api/adventures/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def update_adventure(id, args = {}, options = {}, &block)
      api_call("adventures/#{id}", args, 'put', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/adventures/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def create_adventure(args = {}, options = {}, &block)
      api_call("adventures", args, 'post', options, &block)
    end

    # Deletes an adventure
    # See {http://Yazda.github.io/api/adventures/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def delete_adventure(id, args = {}, options = {}, &block)
      api_call("adventures/#{id}", args, 'delete', options, &block)
    end
  end
end
