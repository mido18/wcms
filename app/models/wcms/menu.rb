module Wcms
  require 'globalize'
  require 'globalize/active_record/act_macro'
  class Menu < ApplicationRecord
    translates :title
    # has_many :childs, class_name: "Menu",
    #          foreign_key: "parent_id"
    #
    # belongs_to :parent, class_name: "Menu"
  end
end
