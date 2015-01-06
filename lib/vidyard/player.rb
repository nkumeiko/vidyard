module Vidyard
  class Player

    attr_accessor :uuid, :name, :url, :attrs

    def initialize(player)
      @attrs = player
      @uuid = player['uuid']
      @name = player['name']
      @url = embed_url
    end

    def embed_url
      "//embed.vidyard.com/share/#{@uuid}"
    end

  end
end
