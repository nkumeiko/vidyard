require 'rubygems'
require 'httparty'

module Vidyard
  class Client

    include HTTParty
    base_uri 'https://api.vidyard.com/dashboard/v1'
    format :json

    def initialize(auth_token)
      @options = { :auth_token => auth_token }
    end

    def method_missing(meth, *args, &block)
      if meth.to_s =~ /^get_(.+)$/
        get_resources($1, args)
      else
        super
      end
    end

    def get_resources(resource, args)
      if Vidyard::Util.singular?(resource)
        resource = "#{resource.to_s.pluralize}/#{args.shift}"
      end
      query = @options.try(:merge, args[0] || {})
      payload = self.class.get("/#{resource}.json", :query => query)
      payload.parsed_response
    rescue
      []
    end

  end
end
