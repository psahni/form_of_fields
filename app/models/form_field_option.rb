class FormFieldOption < ActiveRecord::Base

  belongs_to :form_of_field

 attr_accessor :_destroy

  validates :field_label, :presence => true
end
