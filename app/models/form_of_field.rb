class FormOfField < ActiveRecord::Base

  ## ONLY FOR RADIOBOXES AND CHECKBOXES

  has_many :form_field_options


end
