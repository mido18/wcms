module Wcms
  class Engine < ::Rails::Engine
    isolate_namespace Wcms
    require 'rubygems'
    require 'jquery-rails'
    require 'paperclip'
    config.assets.paths << File.expand_path("../../assets/fonts", __FILE__)
  end
end
