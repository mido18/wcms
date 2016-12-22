module Wcms
  class Engine < ::Rails::Engine
    require 'rubygems'
    require 'jquery-rails'
    isolate_namespace Wcms
    config.assets.paths << File.expand_path("../../assets/fonts", __FILE__)
  end
end
