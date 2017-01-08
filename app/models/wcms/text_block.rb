module Wcms
  require 'globalize'
  require 'globalize/active_record/act_macro'
  class TextBlock < ActiveRecord::Base
    translates :body
    validates_presence_of :name,:body
    validates_uniqueness_of :name
  end
end
