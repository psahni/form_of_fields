class FormOfField < ActiveRecord::Base

  ## ONLY FOR RADIOBOXES AND CHECKBOXES

  has_many :form_field_options

  accepts_nested_attributes_for :form_field_options,  allow_destroy: true

end
