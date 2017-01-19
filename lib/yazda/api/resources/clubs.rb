require 'yazda/api/resources/base'

module Yazda::Api
  module Clubs
    include Common

    # TODO change the doc for this
    # Fetch information about a specific adventure
    #
    # See {http://Yazda.github.io/api/clubs/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return activity json (see http://Yazda.github.io/api/activities/)
    def club(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("clubs/#{id}", args, 'get', options, &block)
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
    def clubs(args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call('clubs', args, 'get', options, &block)
    end

    # Updates an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def update_club(id, args = {}, options = {}, &block)
      api_call("clubs/#{id}", args, 'put', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def create_club(args = {}, options = {}, &block)
      api_call("clubs", args, 'post', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def club_members(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/members", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def club_avatar(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/avatar", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def club_banner(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/banner", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def join_club(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/join", args, 'post', options, &block)
    end


    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def leave_club(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/leave", args, 'get', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def club_update_profile_image(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/update_profile_image", args, 'post', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def club_update_banner_image(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/update_banner_image", args, 'post', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def club_upload_waiver(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/waiver", args, 'post', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def update_notification(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/update_notification", args, 'patch', options, &block)
    end

    # Create an adventure
    # See {http://Yazda.github.io/api/clubs/#put-updates} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return updated activities json (see http://Yazda.github.io/api/activities/)
    def update_member(id,args = {}, options = {}, &block)
      api_call("clubs/#{id}/update_member", args, 'patch', options, &block)
    end
  end
end
