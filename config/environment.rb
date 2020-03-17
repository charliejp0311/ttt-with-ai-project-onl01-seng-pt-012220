require 'bundler'
require 'pry'
Bundler.require
module Concerns
  module ClassMethods
    def all
      self.all
    end

  end
  module InstanceMethods
    def save
      self.all << self
    end
  end
end



require_all 'lib'
