class FormOfField < ActiveRecord::Base

  has_many :form_field_options, class_name: 'FormOfFields'

end
