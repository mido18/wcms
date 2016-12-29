module Wcms
  class TextBlock < ActiveRecord::Base
    validates_presence_of :name,:body
    validates_uniqueness_of :name
  end
end
