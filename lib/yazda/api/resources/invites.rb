require 'yazda/api/resources/base'

module Yazda::Api
  module Invites
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
    def pending_invites(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('invites/pending', args, 'get', options, &block)
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
    def create_invite(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('invites/', args, 'post', options, &block)
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
    def accept_invite(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('invites/accept', args, 'patch', options, &block)
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
    def reject_invite(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('invites/reject', args, 'patch', options, &block)
    end
  end
end
