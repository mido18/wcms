require 'paperclip'

module Wcms
  class Slider < ActiveRecord::Base
    include Paperclip::Glue
    has_attached_file :image, styles: { large:"800x400>", medium: "400x200>", thumb: "200x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    validates_presence_of :image
  end
end
