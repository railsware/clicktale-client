require 'active_support'
require 'astrails/clicktale/controller'
require 'astrails/clicktale/helper'

module Astrails
  module Clicktale

    def self.init
      ActionController::Base.append_view_path(File.dirname(__FILE__) + "/../../app/views") if ActionController::Base.respond_to?(:append_view_path)
      ActionController::Base.send(:include, Astrails::Clicktale::Controller)
      ActionView::Base.send(:include, Astrails::Clicktale::Helper)
    end

    CONFIG = HashWithIndifferentAccess.new

  end
end
