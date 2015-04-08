class Item < ActiveRecord::Base

  has_many :form_of_fields

  accepts_nested_attributes_for :form_of_fields, allow_destroy: true

  FIELDS = ['text_field', 'check_box', 'radio_button', 'file_field', 'text_area']

end
