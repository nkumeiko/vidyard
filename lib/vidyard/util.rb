require 'active_support/core_ext'
require 'active_support/inflector'

module Vidyard
  class Util

    def self.singular?(str)
      str.to_s == str.to_s.singularize
    end

  end
end
