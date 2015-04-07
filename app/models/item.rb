class Item < ActiveRecord::Base

  has_many :form_of_fields

  accepts_nested_attributes_for :form_of_fields, allow_destroy: true
end
